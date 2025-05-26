# Work with Buffers and Windows

| Shortcut   | Command               | Funktion                 | 🔌 Plugin |
| ---------- | --------------------- | ------------------------ | --------- |
| <Tab>      | `:bnext`              | Go to next Buffer        |           |
| <S-Tab>    | `:bprevious`          | Go to prev Buffer        |           |
| <leader>x  | `:Bdelete!`           | Close Buffer             |           |
| <leader>b  | `:enew`               | New Buffer               |           |
| <leader>v  | <C-w>v `:split`       | Split window vertical    |           |
| <leader>h  | <C-w>s `:vsplit`      | Split window horizontal  |           |
| <leader>se | <C-w>=                | Fenstergrößen angleichen |           |
| <leader>xs | `:close`              | Close curr window        |           |
| <C-h>      | <C-w><C-h>            | Switch to left window    |           |
| <C-l>      | <C-w><C-l>            | Switch to right window   |           |
| <C-j>      | <C-w><C-j>            | Switch to window below   |           |
| <C-k>      | <C-w><C-k>            | Switch to window above   |           |
| <Up>       | `:resize -2`          | Shrink window            |           |
| <Down>     | `:resize +2`          | Grow window              |           |
| <Left>     | `:vertical resize -2` | Shrink window horizontal |           |
| <Right>    | `:vertical resize +2` | Grow window horizontal   |           |
| <leader>qs |                       | load session for curr dir| Persistence |
| <leader>qS |                       | select session to load   | Persistence |
| <leader>ql |                       | load last session        | Persistence |

# ✏️ Edit

| Shortcut    | Command | Funktion                        | 🔌 Plugin  |
| ----------- | ------- | ------------------------------- | ---------- |
| `grn`       |         | Rename symbol                   | LSP        |
| `gnn`       |         | Select symbol (new node)        | Treesitter |
| `gri`       |         | Grow/increment symbol selection | Treesitter |
| `grs`       |         | Shrink symbol selection         | Treesitter |
| `grc`       |         | Select scope                    | Treesitter |
| 'v' `if/af` |         | Select inner/outer fn           | Treesitter |
| 'v' `ic/ac` |         | Select inner/outer class/type   | Treesitter |
| 'v' `as`    |         | Select language scope           | Treesitter |

# 🖥️ Terminal

| Shortcut | Command     | Funktion        | 🔌 Plugin                 |
| -------- | ----------- | --------------- | ------------------------- | ---- |
|          | `:terminal` | open a terminal | Nvim                      |
|          | `:split     | terminal`       | open a terminal in window | Nvim |

# 📦 Git

| Shortcut    | Command                              | Funktion                     | 🔌 Plugin  |
| ----------- | ------------------------------------ | ---------------------------- | ---------- |
| <leader>tb  | `Gitsigns toggle_current_line_blame` | Toggle Git Lineblame         | GitSigns   |
| <leader>ts  | `Gitsigns toggle_signs`              | Toggle Gitsigns              | GitSigns   |
| <leader>tl  | `Gitsigns toggle_linehl`             | Toggle Git Line Highlights   | GitSigns   |
| <leader>tn  | `Gitsigns toggle_numhl`              | Toggle Git Number Highlights | GitSigns   |
| <leader>td  | `Gitsigns toggle_deleted`            | Toggle Git deleted lines     | GitSigns   |
| <leader>tw  | `Gitsigns toggle_word_diff`          | Toggle Git Word-Diff         | GitSigns   |
| <leader>dh  | `Gitsigns diffthis`                  | [D]iff [h]unk                | GitSigns   |
| <leader>lg  | `LazyGit`                            | Open Lazygit                 | 🛏️ LazyGit |
| <leader>ggd |                                      | Open Git Diff in telescope   | Snacks     |
| <leader>gb  |                                      | Open Git Branches telescope  | Snacks     |

# 🔍 Find Things

| Shortcut    | Command | Funktion                       | 🔌 Plugin     |
| ----------- | ------- | ------------------------------ | ------------- |
| <C-p>       |         | Find File                      | 🔭 Telescope  |
| <leader>fg  |         | Find text in files             | 🔭 Telescope  |
| <leader>lg  |         | Live grep                      | 🔭 Telescope  |
| `gra`       |         | Run Codeactions                | LSP           |
| `grr`       |         | Find references                | LSP           |
| `gri`       |         | Find implementations           | LSP           |
| `grd`       |         | Go to Definition               | LSP           |
| `grD`       |         | Go to declaration              | outcommented  |
| `gO`        |         | Show document symbols          | LSP           |
| `gW`        |         | Workspace-Symbole anzeigen     | LSP           |
| `grt`       |         | Go to type definition          | LSP           |
| <a-n>       |         | Next occurance of hovered word | 🔦 illuminate |
| <a-p>       |         | Prev occurance of hovered word | 🔦 illuminate |
| <leader>sk  |         | Search for Keymaps             | 🔭 Telescope  |
| m<sign>     |         | Set mark <sign>                | Vim           |
| <S-k>       |         | Get LSP-Info of hovered word   | LSP           |
| <leader>tt  |         | Show Telescope Todos           | todo-comments |
| <leader>xx  |         | Toggle Diagnostics             | Trouble       |
| <leader>xX  |         | Buffer Diagnostics             | Trouble       |
| <leader>cs  |         | Symol Buffers                  | Trouble       |
| <leader>cl  |         | LSP Definitions/references...  | Trouble       |
| <leader>xL  |         | Location List                  | Trouble       |
| <leader>xQ  |         | Quickfix List                  | Trouble       |
| <leader>gb  |         | Quickfix List                  | Trouble       |
| <leader>s"  |         | Telescope Registers            | Trouble       |

# 💄 Change Appearance

| Shortcut   | Command           | Funktion                       | 🔌 Plugin       |
| ---------- | ----------------- | ------------------------------ | --------------- |
| <leader>cF |                   | Autoformat file                | conform         |
| <leader>u  |                   | Toggle Undotree                | 🌴 undotree     |
| <leader>lw | `:set wrap!`      | Toggle Linewrap                | Vim             |
|            | `:IBLToggle`      | Toggle Indentation Lines       | IndentBlankLine |
|            | `:IBLToggleScope` | Toggle Indentation Lines Scope | IndentBlankLine |
| <leader>ln |                   | Toggle relative line numbers   | Vim             |

# ✨ Ai
Self-update references, they can be pinned (for files and buffers) or watched (for buffers).

| Shortcut   | Command                     | Funktion               | 🔌 Plugin        |
| ---------- | --------------------------- | ---------------------- | ---------------- |
| <leader>aa | `:CodeCompanionChat Toggle` | Toggle Ai Window       | 👫 CodeCompanion |
| <leader>ca | `:CodeCompanionActions `    | Open Companion Actions | 👫 CodeCompanion |
| 'v' `ga`   |                             | Add Selection to chat  | 👫 CodeCompanion |
| 'n' `ga`   | Nur im Chat!                | Change Modell          | 👫 CodeCompanion |
| 'n' `gx`   | Nur im Chat!                | Clear Chat             | 👫 CodeCompanion |
| 'n' `gh`   | Nur im Chat!                | Open Chat History      | 👫 CodeCompanion |
| <C-.>      |                             | Get AI Autocompletions | 👫 CodeCompanion |

# 🆘 Get Help

| Shortcut  | Command | Funktion               | 🔌 Plugin   |
| --------- | ------- | ---------------------- | ----------- |
| <bs>      |         | Go up one level        | ⌨️ WhichKey |
| '         |         | Show list of marks     | ⌨️ WhichKey |
| `         |         | Show list of marks     | ⌨️ WhichKey |
| "         |         | Show list of registers | ⌨️ WhichKey |
| 'i' <C-r> |         | Show list of registers | ⌨️ WhichKey |
