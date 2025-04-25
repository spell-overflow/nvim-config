return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup({
      adapters = {
        ollama = function()
          return require('codecompanion.adapters').extend('ollama', {
            env = {
              url = 'http://192.168.1.103:11434',
              -- api_key = '',
            },
            headers = {
              ['Content-Type'] = 'application/json',
            },
            schema = {
              model = {
                default = 'deepseek-coder-v2',
              },
            },
            parameters = {
              sync = true,
            },
          })
        end,
        openAI = function()
          return require('codecompanion.adapters').extend('openai', {
            env = {
              api_key = os.getenv('OPENAI_API_KEY'),
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = 'openAI' },
        inline = { adapter = 'openAI' },
        agent = { adapter = 'openAI' },
      },
      opts = {
        language = 'German',
      },
      display = {
        chat = {
          -- Change the default icons
          icons = {
            pinned_buffer = ' ',
            watched_buffer = '👀 ',
          },
          -- Alter the sizing of the debug window
          debug_window = {
            ---@return number|fun(): number
            width = vim.o.columns - 5,
            ---@return number|fun(): number
            height = vim.o.lines - 2,
          },

          -- Options to customize the UI of the chat buffer
          window = {
            layout = 'vertical', -- float|vertical|horizontal|buffer
            position = 'right', -- left|right|top|bottom (nil will default depending on vim.opt.plitright|vim.opt.splitbelow)
            border = 'single',
            height = 0.8,
            width = 0.25,
            relative = 'editor',
            full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
            opts = {
              breakindent = true,
              cursorcolumn = false,
              cursorline = false,
              foldcolumn = '0',
              linebreak = true,
              list = false,
              numberwidth = 1,
              signcolumn = 'no',
              spell = false,
              wrap = true,
            },
          },
          -- intro_message = 'Welcome to CodeCompanion ✨! Press ? for options',
          -- show_header_separator = true, -- Show header separators in the chat buffer? Set this to false if you're using an external markdown formatting plugin
          -- separator = '─', -- The separator between the different messages in the chat buffer
          -- show_references = true, -- Show references (from slash commands and variables) in the chat buffer?
          -- show_settings = false, -- Show LLM settings at the top of the chat buffer?
          -- show_token_count = true, -- Show the token count for each response?
          -- start_in_insert_mode = true, -- Open the chat buffer in insert mode?

          ---Customize how tokens are displayed
          ---@param tokens number
          ---@param adapter CodeCompanion.Adapter
          ---@return string
          token_count = function(tokens, adapter)
            return ' (' .. tokens .. ' tokens)'
          end,
        },
      },
    })
  end,
}
