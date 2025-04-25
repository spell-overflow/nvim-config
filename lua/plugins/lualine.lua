--return {
--  "nvim-lualine/lualine.nvim",
--  config = function()
--    require('lualine').setup({
--      options = {
--        theme = "catppuccin"
--      }
--    })
--  end
--}

return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str
        -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
      end,
    }

    local filename = {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    local macro_recording = {
      function()
        local recording_register = vim.fn.reg_recording()
        if recording_register == '' then
          local count = vim.v.count
          local macro_register = vim.v.reg
          if count > 0 and macro_register ~= '' then
            return count .. '@' .. macro_register
          end
          return ''
        else
          return 'Recording @' .. recording_register
        end
      end,
      color = { fg = '#ff9e64' },
    }

    local CodeCompanion = require('lualine.component'):extend()

    CodeCompanion.processing = false
    CodeCompanion.spinner_index = 1

    local spinner_symbols = {
      '⠋',
      '⠙',
      '⠹',
      '⠸',
      '⠼',
      '⠴',
      '⠦',
      '⠧',
      '⠇',
      '⠏',
    }
    local spinner_symbols_len = 10

    function CodeCompanion:init(options)
      CodeCompanion.super.init(self, options)

      local group = vim.api.nvim_create_augroup('CodeCompanionHooks', {})

      vim.api.nvim_create_autocmd({ 'User' }, {
        pattern = 'CodeCompanionRequest*',
        group = group,
        callback = function(request)
          if request.match == 'CodeCompanionRequestStarted' then
            self.processing = true
          elseif request.match == 'CodeCompanionRequestFinished' then
            self.processing = false
          end
        end,
      })
    end

    function CodeCompanion:update_status()
      if self.processing then
        self.spinner_index = (self.spinner_index % spinner_symbols_len) + 1
        return spinner_symbols[self.spinner_index]
      else
        return nil
      end
    end

    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'catppuccin', -- Set theme based on environment variable
        -- Some useful glyphs:
        -- https://www.nerdfonts.com/cheat-sheet
        --        
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'neo-tree', 'explorer' },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { 'branch' },
        lualine_c = { filename, macro_recording },
        lualine_x = {
          CodeCompanion,
          diagnostics,
          diff,
          { 'encoding', cond = hide_in_width },
          { 'filetype', cond = hide_in_width },
        },
        lualine_y = { 'location' },
        lualine_z = { 'progress' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      --      tabline = {},
      --      extensions = { 'fugitive' },
    })
  end,
}
