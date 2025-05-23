return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'folke/trouble.nvim', 'nvim-web-devicons' },
  config = function()
    -- Setup Spinner Symbols
    local spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' }

    -- Spinner State
    vim.g.code_companion_processing = false
    vim.g.code_companion_spinner_index = 1

    -- Autocommands to manage processing state
    vim.api.nvim_create_augroup('CodeCompanionLualine', { clear = true })

    vim.api.nvim_create_autocmd('User', {
      group = 'CodeCompanionLualine',
      pattern = 'CodeCompanionRequestStarted',
      callback = function()
        vim.g.code_companion_processing = true
      end,
    })

    vim.api.nvim_create_autocmd('User', {
      group = 'CodeCompanionLualine',
      pattern = 'CodeCompanionRequestFinished',
      callback = function()
        vim.g.code_companion_processing = false
      end,
    })

    -- CodeCompanion Component
    local function code_companion()
      if vim.g.code_companion_processing then
        vim.g.code_companion_spinner_index = (vim.g.code_companion_spinner_index % #spinner) + 1
        return spinner[vim.g.code_companion_spinner_index]
      end
      return ''
    end

    -- Macro recording display
    local function macro_recording()
      local reg = vim.fn.reg_recording()
      return reg ~= '' and 'Recording @' .. reg or ''
    end

    -- Hide on narrow windows
    local function hide_in_width()
      return vim.fn.winwidth(0) > 100
    end

    -- Setup Trouble LSP symbols
    local trouble = require('trouble')
    local symbols = trouble.statusline({
      mode = 'lsp_document_symbols',
      title = false,
      filter = { range = true },
      format = '{kind_icon}{symbol.name:Normal}',
      hl_group = 'lualine_c_normal',
    })

    -- Setup lualine
    require('lualine').setup({
      options = {
        theme = 'catppuccin',
        icons_enabled = true,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'neo-tree', 'explorer', 'dashboard' },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return ' ' .. str
            end,
          },
        },
        lualine_b = { 'branch' },
        lualine_c = {
          {
            'filename',
            file_status = true, -- Displays file status (readonly status, modified status)
            newfile_status = false, -- Display new file status (new file means no write after created)
            path = 0, -- 0: Just the filename
            -- 1: Relative path
            -- 2: Absolute path
            -- 3: Absolute path, with tilde as the home directory
            -- 4: Filename and parent dir, with tilde as the home directory
            shorting_target = 40, -- Shortens path to leave 40 spaces in the window
            -- for other components. (terrible name, any suggestions?)
            symbols = {
              modified = '[+]', -- Text to show when the file is modified.
              readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
              unnamed = '[No Name]', -- Text to show for unnamed buffers.
              newfile = '[New]', -- Text to show for newly created file before first write}
            },
          },
          macro_recording,
          -- { symbols.get, cond = symbols.has },
          { 'searchcount', maxcount = 999, timeout = 500 },
        },

        lualine_x = {
          code_companion,
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            sections = { 'error', 'warn' },
            symbols = { error = ' ', warn = ' ' },
            cond = hide_in_width,
          },
          {
            'diff',
            symbols = { added = ' ', modified = ' ', removed = ' ' },
            cond = hide_in_width,
          },
          { 'encoding', cond = hide_in_width },
          {
            'fileformat',
            symbols = {
              unix = '', -- e712
              dos = '', -- e70f
              mac = '', -- e711
            },
          },
          {
            'filetype',
            colored = true, -- Displays filetype icon in color if set to true
            icon_only = false, -- Display only an icon for filetype
            icon = { align = 'right' }, -- Display filetype icon on the right hand side
            -- icon =    {'X', align='right'}
            -- Icon string ^ in table is ignored in filetype component,
          },
        },
        lualine_y = { 'location' },
        lualine_z = { '%p%%/%L' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
