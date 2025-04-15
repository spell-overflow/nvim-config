return {
  'catppuccin/nvim',
  --  lazy = true,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      flavour = 'mocha',
      --      flavour = "auto"
      --        background = {
      --          dark = "mocha",
      --          light = "latte"
      --        },
    })
    vim.cmd.colorscheme('catppuccin')
  end,
}
