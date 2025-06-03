return {
  'github/copilot.vim',
  enabled = function()
    local cwd = vim.fn.getcwd()
    vim.notify('CWD is: ' .. cwd)
    return not cwd:match('/home/anneke/Obsidian/PKM')
  end,
  config = function()
    vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
  end,
}
