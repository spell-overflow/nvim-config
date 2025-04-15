vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.autoindent = true
--vim.o.smartindent = true

-- vim.o.relativenumber = true
vim.o.number = true

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Save undo history
vim.opt.undofile = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- set true color support
vim.opt.termguicolors = true

vim.o.ignorecase = true -- Case-insensitive searching UNLESS /C or capital in search (default: false)
vim.o.smartcase = true -- smart case (default: false)

