return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = function()
    local highlight = {
      'RainbowRed',
      'RainbowYellow',
      'RainbowBlue',
      'RainbowOrange',
      'RainbowGreen',
      'RainbowViolet',
      'RainbowCyan',
    }

    local hooks = require('ibl.hooks')
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#f38ba8' }) -- Mocha Red
      vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#f9e2af' }) -- Mocha Yellow
      vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#89b4fa' }) -- Mocha Blue
      vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#fab387' }) -- Mocha Peach
      vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#a6e3a1' }) -- Mocha Green
      vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#b4befe' }) -- Mocha Lavender
      vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#94e2d5' }) -- Mocha Teal
    end)

    return {
      indent = { highlight = highlight },
      scope = {
        enabled = true,
        highlight = highlight,
        show_start = true,
        show_end = true,
        injected_languages = true,
        priority = 500,
      },
      exclude = {
        buftypes = {
          'dashboard',
        },
      },
    }
  end,
  config = function(_, opts)
    local ibl = require('ibl')
    ibl.setup(opts)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'dashboard',
      callback = function(event)
        vim.schedule(function()
          require('ibl').setup_buffer(event.buf, { enabled = false })
        end)
      end,
    })
  end,
}
