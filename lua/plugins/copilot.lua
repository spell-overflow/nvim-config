return {
  'github/copilot.vim',
  enabled = true,
  config = function()
    -- vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
    --   expr = true,
    --   replace_keycodes = false,
    -- })
    -- vim.g.copilot_no_tab_map = true

    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
  end,
}
