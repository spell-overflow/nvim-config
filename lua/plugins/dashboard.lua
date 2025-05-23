return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {
      'RileyGabrielson/inspire.nvim',
      name = 'inspire',
      lazy = false,
    },
  },
  config = function()
    local dashboard = require('dashboard')
    local inspire = require('inspire')

    local header = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }

    local quote = inspire.get_quote()
    local centered = inspire.center_text(quote.text, quote.author, 52, 8, 52)

    for _, line in ipairs(centered) do
      table.insert(header, line)
    end

    dashboard.setup({
      theme = 'hyper',
      config = {
        header = header,
        week_header = {
          enable = false,
        },
        shortcut = {
          {
            icon = ' ',
            desc = 'New File',
            group = 'DiagnosticHint',
            action = 'ene | startinsert',
            key = 'n',
          },
          {
            icon = ' ',
            desc = 'Find File',
            group = '@property',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            icon = ' ',
            desc = 'Recent Files',
            group = 'Label',
            action = 'Telescope oldfiles',
            key = 'o',
          },
          {
            icon = '󰩈 ',
            desc = 'Quit',
            group = 'Exception',
            action = 'qa',
            key = 'q',
          },
        },
      },
    })
  end,
}
