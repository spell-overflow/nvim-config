return {
  'jiaoshijie/undotree',
  dependencies = 'nvim-lua/plenary.nvim',
  config = true,
  keys = { -- load the plugin only when using it's keybinding:
    vim.keymap.set('n', '<leader>u', function()
      require('undotree').toggle()
    end, { desc = 'Toggle UndoTree', noremap = true, silent = true }),
  },
}
