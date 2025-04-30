vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.autoindent = true
--vim.o.smartindent = true

-- vim.o.relativenumber = true
vim.o.number = true

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Display lines as one long line (default: true)
vim.o.wrap = false

-- Companion to wrap, don't split words (default: false)
vim.o.linebreak = true

-- Save undo history
vim.opt.undofile = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

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

-- Minimal number of lines to keep above and below cursor
vim.opt.scrolloff = 5

-- Conceallevel (for Obsidian)
vim.opt.conceallevel = 1
