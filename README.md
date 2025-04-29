# Work with Buffers and Windows
| Shortcut   | Command                             | Funktion                       | 🔌 Plugin         |
| ---------- | ----------------------------------- | ------------------------------ | ----------------- |
| <Tab>      | `:bnext`                            | Go to next Buffer              |                   |
| <S-Tab>    | `:bprevious`                        | Go to prev Buffer              |                   |
| <leader>x  | `:Bdelete!`                         | Close Buffer                   |                   |
| <leader>b  | `:enew`                             | New Buffer                     |                   |
| <leader>v  | <C-w>v `:split`                     | Split window vertical          |                   |
| <leader>h  | <C-w>s `:vsplit`                    | Split window horizontal        |                   |
| <leader>se | <C-w>=                              | Fenstergrößen angleichen       |                   |
| <leader>xs | `:close`                            | Close curr window              |                   |
| <C-h>      | <C-w><C-h>                          | Switch to left window          |                   |
| <C-l>      | <C-w><C-l>                          | Switch to right window         |                   |
| <C-j>      | <C-w><C-j>                          | Switch to window below         |                   |
| <C-k>      | <C-w><C-k>                          | Switch to window above         |                   |
| <Up>       | `:resize -2`                        | Shrink window                  |                   |
| <Down>     | `:resize +2`                        | Grow window                    |                   |
| <Left>     | `:vertical resize -2`               | Shrink window horizontal       |                   |
| <Right>    | `:vertical resize +2`               | Grow window horizontal         |                   |

# 🖥️ Terminal
| Shortcut   | Command                             | Funktion                       | 🔌 Plugin         |
| ---------- | ----------------------------------- | ------------------------------ | ----------------- |
|            | `:terminal`                         | open a terminal                | Nvim              |
|            | `:split | terminal`                 | open a terminal in window      | Nvim              |

# 📦 Git
| Shortcut   | Command                             | Funktion                       | 🔌 Plugin         |
| ---------- | ----------------------------------- | ------------------------------ | ----------------- |
| <leader>tb | `Gitsigns toggle_current_line_blame`| Toggle Git Lineblame           | GitSigns          |
| <leader>td | `Gitsigns toggle_deleted`           | Toggle Git deleted lines       | GitSigns          |
| <leader>tw | `Gitsigns toggle_word_diff`         | Toggle Git Word-Diff           | GitSigns          |
| <leader>lg | `LazyGit`                           | Open Lazygit                   | 🛏️ LazyGit        |

# 🔍 Find Things
| Shortcut   | Command                             | Funktion                       | 🔌 Plugin         |
| ---------- | ----------------------------------- | ------------------------------ | ----------------- |
| <C-p>`     |                                     | Find File                      | 🔭 Telescope      |
| <leader>fg |                                     | Find text in files             | 🔭 Telescope      |
| `grn`      |                                     | Rename Symbol                  | LSP               |
| `gra`      |                                     | Run Codeactions                | LSP               |
| `grr`      |                                     | Find references                | LSP               |
| `gri`      |                                     | Find implementations           | LSP               |
| `grd`      |                                     | Go to Definition               | LSP               |
| `grD`      |                                     | Go to declaration              | outcommented      |
| `gO`       |                                     | Show document symbols          | LSP               |
| `gW`       |                                     | Workspace-Symbole anzeigen     | LSP               |
| `grt`      |                                     | Go to type definition          | LSP               |
| <a-n>      |                                     | Next occurance of hovered word | 🔦 illuminate     |
| <a-p>      |                                     | Prev occurance of hovered word | 🔦 illuminate     |
| <leader>sk |                                     | Search for Keymaps             | 🔭 Telescope      |
| m<sign>    |                                     | Set mark <sign>                | Vim              |

# 💄 Change Appearance
| Shortcut   | Command                             | Funktion                       | 🔌 Plugin         |
| ---------- | ----------------------------------- | ------------------------------ | ----------------- |
| <leader>cF |                                     | Autoformat file                | conform           |
| <leader>u  |                                     | Toggle Undotree                | 🌴 undotree       |
|            | `:IBLToggle`                        | Toggle Indentation Lines       | IndentBlankLine   |
|            | `:IBLToggleScope`                   | Toggle Indentation Lines Scope | IndentBlankLine   |

# ✨ Ai
| Shortcut   | Command                             | Funktion                       | 🔌 Plugin         |
| ---------- | ----------------------------------- | ------------------------------ | ----------------- |
| <leader>aa | `:CodeCompanionChat Toggle`         | Toggle Ai Window               | 👫 CodeCompanion  |
| <leader>ca | `:CodeCompanionActions `            | Open Companion Actions         | 👫 CodeCompanion  |
| 'v' `ga`   | `:CodeCompanionActions`             | Open Companion Actions         | 👫 CodeCompanion  |
| 'n' `ga`   |                                     | Change Modell                  | 👫 CodeCompanion  |
| 'n' `gx`   |                                     | Clear Chat                     | 👫 CodeCompanion  |

# 🆘 Get Help
| Shortcut  | Command                              | Funktion                       | 🔌 Plugin         |
| --------- | ------------------------------------ | ------------------------------ | ----------------- |
| <bs>      |                                      | Go up one level                | ⌨️ WhichKey       |
| '         |                                      | Show list of marks             | ⌨️ WhichKey       |
| `         |                                      | Show list of marks             | ⌨️ WhichKey       |
| "         |                                      | Show list of registers         | ⌨️ WhichKey       |
| 'i' <C-r> |                                      | Show list of registers         | ⌨️ WhichKey       |

