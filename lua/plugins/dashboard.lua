return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    local inspire = require('inspire')
    local quote = inspire.get_quote()
    local centered_quote = inspire.center_text(quote.text, quote.author, 52, 8, 52)

    require('dashboard').setup({
      theme = 'doom',
      config = {
        header = {
          '',
          '                        .88888888:.                          ',
          '                       88888888.88888.                       ',
          '                     .8888888888888888.                      ',
          '                     888888888888888888                      ',
          "                     88' _`88'_  `88888                      ",
          '                     88 88 88 88  88888                      ',
          '                     88_88_::_88_:88888                      ',
          '                     88:::,::,:::::8888                      ',
          "                     88`:::::::::'`8888                      ",
          "                    .88  `::::'    8:88.                     ",
          '                   8888            `8:888.                   ',
          "                 .8888'             `888888.                 ",
          "                .8888:..  .::.  ...:'8888888:.              ",
          "               .8888.'     :'     `'::`88:88888             ",
          "              .8888        '         `.888:8888.            ",
          '             888:8         .           888:88888            ',
          '           .888:88        .:           888:88888:           ',
          '           8888888.       ::           88:888888            ',
          '           `.::.888.      ::          .88888888             ',
          "          .::::::.888.    ::         :::`8888'.:.           ",
          "         ::::::::::.888   '         .::::::::::::           ",
          "         ::::::::::::.8    '      .:8::::::::::::.         ",
          '        .::::::::::::::.        .:888:::::::::::::         ',
          "        :::::::::::::::88:.__..:88888:::::::::::'          ",
          "         `'.:::::::::::88888888888.88:::::::::'            ",
          "               `':::_:' -- '' -'-' `':_::::'`              ",
          '',
          unpack(centered_quote), -- Fügt das zentrierte Zitat zum Header hinzu
        },
        center = {
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = 'New file',
            desc_hl = 'String',
            key = 'e',
            key_hl = 'Number',
            action = 'ene | startinsert',
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = 'Find file',
            desc_hl = 'String',
            key = 'f',
            key_hl = 'Number',
            action = 'cd $HOME/Workspace | Telescope find_files',
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = 'Recent',
            desc_hl = 'String',
            key = 'r',
            key_hl = 'Number',
            action = 'Telescope oldfiles',
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = 'Settings',
            desc_hl = 'String',
            key = 's',
            key_hl = 'Number',
            action = 'e $MYVIMRC | cd %:p:h | split . | wincmd k | pwd',
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = 'Quit NVIM',
            desc_hl = 'String',
            key = 'q',
            key_hl = 'Number',
            action = 'qa',
          },
        },
      },
    })
  end,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
    { 'RileyGabrielson/inspire.nvim' },
  },
}
