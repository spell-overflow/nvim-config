--set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

--Disable spacebars default behavior in normal and visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
local opts = { noremap = true, silent = true } -- for conciseness

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { desc = 'Toggle linewrap' })

-- Toggle line numbers
vim.keymap.set('n', '<leader>ln', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = 'Toggle relative [l]ine [n]umbers' })

--Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Split window [v]ertically' }) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', { desc = 'Split windows [h]orizontall' }) -- split windows horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = 'make [s]plit windows [e]qual width & height' }) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', { desc = 'close current split window' }) -- close current split window

vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Move forward between buffers', noremap = true, silent = true })
vim.keymap.set(
  'n',
  '<S-Tab>',
  ':bprevious<CR>',
  { desc = 'Move backwards between buffers', noremap = true, silent = true }
)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', { desc = 'Close buffer', noremap = true, silent = true })
vim.keymap.set('n', '<leader>b', ':enew<CR>', { desc = 'New [b]uffer', noremap = true, silent = true })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', { desc = 'Shrink current window height' })
vim.keymap.set('n', '<Down>', ':resize +2<CR>', { desc = 'Expand current window height' })
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', { desc = 'Shrink current window width' })
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', { desc = 'Expand current window width' })

-- Tabs
-- vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'open new tab' }) -- open new tab
-- vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'close current tab' }) -- close current tab
-- vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = ' go to next tab' }) --  go to next tab
-- vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = ' go to previous tab' }) --  go to previous tab

-- Stay in indent mode
--vim.keymap.set('v', '<', '<gv', opts)
--vim.keymap.set('v', '>', '>gv', opts)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps? TODO: Do I need this?
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
--vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- CodeCompanion
vim.keymap.set(
  { 'n', 'v' },
  '<leader>ca',
  '<cmd>CodeCompanionActions<cr>',
  { desc = 'Companion Actions', noremap = true, silent = true }
)
vim.keymap.set(
  { 'n', 'v' },
  '<leader>aa',
  '<cmd>CodeCompanionChat Toggle<cr>',
  { desc = 'Toggle Companion Chat', noremap = true, silent = true }
)
vim.keymap.set(
  { 'v', 'n' },
  'ga',
  '<cmd>CodeCompanionChat Add<cr>',
  { desc = 'Add visual-mode to Companion Chat', noremap = true, silent = true }
)

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
