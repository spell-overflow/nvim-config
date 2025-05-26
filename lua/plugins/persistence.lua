return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    need = 2,

    -- load the session for the current directory
    vim.keymap.set('n', '<leader>qs', function()
      require('persistence').load()
    end, { desc = 'Load [s]ession for curr dir' }),

    -- select a session to load
    vim.keymap.set('n', '<leader>qS', function()
      require('persistence').select()
    end, { desc = '[S]elect session to load' }),

    -- load the last session
    vim.keymap.set('n', '<leader>ql', function()
      require('persistence').load({ last = true })
    end, { desc = 'Load [l]ast session' }),

    -- -- stop Persistence => session won't be saved on exit
    -- vim.keymap.set('n', '<leader>qd', function()
    --   require('persistence').stop()
    -- end),
  },
}
