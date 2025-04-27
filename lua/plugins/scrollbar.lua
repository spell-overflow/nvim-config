return {
  'petertriho/nvim-scrollbar',
  config = function()
    require('scrollbar').setup({
      show_in_active_only = true,
      handlers = {
        gitsigns = true,
        search = true,
        -- ale = false,
        -- handle = true,
        -- cursor = true,
        -- diganostic = true,
      },
      excluded_filetypes = {
        'dropbar_menu',
        'dropbar_menu_fzf',
        'DressingInput',
        'cmp_docs',
        'cmp_menu',
        'noice',
        'prompt',
        'TelescopePrompt',
        'snacks_picker_list',
      },
    })
    require('gitsigns').setup()
    require('scrollbar.handlers.gitsigns').setup()
  end,
}
