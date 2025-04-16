return {
  'catppuccin/nvim',
  --  lazy = true,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      integrations = {
        cmp = true,
        treesitter = true,
        mason = true,
        noice = true,
        which_key = true,
      },
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
