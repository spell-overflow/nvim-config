return {
  'petertriho/nvim-scrollbar',
  config = function()
    require('scrollbar').setup({
      show_in_active_only = true,
      handlers = {
        gitsigns = true,
        search = true,
      },
    })
    require('gitsigns').setup()
    require('scrollbar.handlers.gitsigns').setup()
  end,
}
