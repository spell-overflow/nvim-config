return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      'folke/trouble.nvim',
    },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      local open_with_trouble = require('trouble.sources.telescope').open_with_trouble

      telescope.setup({
        defaults = {
          mappings = {
            n = {
              ['<C-t>'] = open_with_trouble,
              ['<C-h>'] = actions.move_selection_previous,
              ['<C-l>'] = actions.move_selection_next,
            },
          },
          extensions = {
            ['ui-select'] = require('telescope.themes').get_dropdown({}),
          },
        },
      })

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end,
  },
}
