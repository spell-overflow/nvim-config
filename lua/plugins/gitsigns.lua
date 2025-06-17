return {
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require('gitsigns')

    gitsigns.setup({
      signs = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signs_staged = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signs_staged_enable = true,
      signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
      numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
      linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
      word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
      watch_gitdir = { follow_files = true },
      auto_attach = true,
      attach_to_untracked = false,
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default
      max_file_length = 40000, -- Disable if file is longer than this (in lines)
      preview_config = {
        -- Options passed to nvim_open_win
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1,
      },
    })
    vim.keymap.set('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle git [b]lame line' })
    vim.keymap.set('n', '<leader>td', gitsigns.toggle_deleted, { desc = '[T]oggle git [d]eleted' })
    vim.keymap.set('n', '<leader>ts', gitsigns.toggle_signs, { desc = '[T]oggle git [s]igns' })
    vim.keymap.set('n', '<leader>tl', gitsigns.toggle_linehl, { desc = '[T]oggle git [l]ine highlights' })
    vim.keymap.set('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = '[T]oggle git [w]ord diff' })
    vim.keymap.set('n', '<leader>dh', gitsigns.diffthis, { desc = '[D]iff [h]unk' })
    vim.keymap.set('n', '<leader>tn', gitsigns.toggle_numhl, { desc = '[T]oggle git [n]umber highlights' })
    vim.keymap.set('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc = 'Preview [h]unk [i]nline' })
    vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, { desc = '[R]eset [h]unk' })
  end,
}
