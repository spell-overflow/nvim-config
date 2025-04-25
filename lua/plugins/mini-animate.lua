return {
  'echasnovski/mini.animate',
  version = false,
  config = function()
    local animate = require('mini.animate')

    animate.setup({
      -- Cursor path animation
      cursor = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 250, unit = 'total' }),
        path = animate.gen_path.line({ min_step = 1, max_step = 1000 }),
      },

      -- Vertical scroll animation
      scroll = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 250, unit = 'total' }),
        subscroll = animate.gen_subscroll.equal({ max_step = 60 }),
      },

      -- Window resize animation
      resize = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 250, unit = 'total' }),
        subresize = animate.gen_subresize.equal(),
      },

      -- Window open animation
      open = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 250, unit = 'total' }),
        winconfig = animate.gen_winconfig.static({ n_steps = 25 }),
        winblend = animate.gen_winblend.linear({ from = 80, to = 100 }),
      },

      -- Window close animation
      close = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 250, unit = 'total' }),
        winconfig = animate.gen_winconfig.static({ n_steps = 25 }),
        winblend = animate.gen_winblend.linear({ from = 100, to = 80 }),
      },
    })
  end,
}
