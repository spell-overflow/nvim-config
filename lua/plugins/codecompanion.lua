return {
  'olimorris/codecompanion.nvim',
  enabled = function()
    local cwd = vim.fn.getcwd()
    vim.notify('CWD is: ' .. cwd)
    return not cwd:match('/home/anneke/Obsidian/PKM')
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/codecompanion-history.nvim',
  },
  config = function()
    require('codecompanion').setup({
      extensions = {
        history = {
          enabled = true,
          opts = {
            -- Keymap to open history from chat buffer (default: gh)
            keymap = 'gh',
            -- Automatically generate titles for new chats
            auto_generate_title = true,
            ---On exiting and entering neovim, loads the last chat on opening chat
            continue_last_chat = false,
            ---When chat is cleared with `gx` delete the chat from history
            delete_on_clearing_chat = false,
            -- Picker interface ("telescope" or "snacks" or "default")
            picker = 'telescope',
            ---Enable detailed logging for history extension
            enable_logging = false,
            -- dir_to_save = vim.fn.stdpath('data') .. '/codecompanion-history',
            dir_to_save = vim.fn.expand('$HOME') .. '/.config/nvim/codecompanion-history',
            -- Save all chats by default
            auto_save = true,
            -- Keymap to save the current chat manually
            save_chat_keymap = 'sc',
          },
        },
      },
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
        anthropic = function()
          return require('codecompanion.adapters').extend('anthropic', {
            env = {
              api_key = os.getenv('ANTHROPIC_API_KEY'),
            },
            headers = {
              ['Content-Type'] = 'application/json',
            },
            schema = {
              model = {
                default = 'claude-3-5-haiku-latest',
              },
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = 'anthropic' },
        inline = { adapter = 'anthropic' },
        agent = { adapter = 'anthropic' },
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
          keymaps = {
            completion = {
              modes = {
                i = '<C-.>',
              },
              index = 1,
              callback = 'keymaps.completion',
              description = 'Completion Menu',
            },
          },
          auto_scroll = false,

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
          start_in_insert_mode = false, -- Open the chat buffer in insert mode?

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
