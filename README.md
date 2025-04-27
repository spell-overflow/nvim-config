# Neovim Konfiguration

## 🔌 Plugin Keymaps

### LSP (Language Server Protocol)

| Shortcut | Command                                           | Funktion                   |              |
| -------- | ------------------------------------------------- | -------------------------- | ------------ |
| `grn`    | `vim.lsp.buf.rename`                              | Umbenennen eines Symbols   |              |
| `gra`    | `vim.lsp.buf.code_action`                         | Code-Aktionen ausführen    |              |
| `grr`    | `telescope.builtin.lsp_references`                | Referenzen finden          |              |
| `gri`    | `telescope.builtin.lsp_implementations`           | Implementierungen finden   |              |
| `grd`    | `telescope.builtin.lsp_definitions`               | Zur Definition springen    |              |
| `grD`    | `vim.lsp.buf.declaration`                         | Zur Deklaration springen   | outcommented |
| `gO`     | `telescope.builtin.lsp_document_symbols`          | Dokumentsymbole anzeigen   |              |
| `gW`     | `telescope.builtin.lsp_dynamic_workspace_symbols` | Workspace-Symbole anzeigen |              |
| `grt`    | `telescope.builtin.lsp_type_definitions`          | Typ-Definition anzeigen    |              |

### 🔭 Telescope

| Shortcut     | Command                        | Funktion               |
| ------------ | ------------------------------ | ---------------------- |
| `<C-p>`      | `telescope.builtin.find_files` | Dateien suchen         |
| `<leader>fg` | `telescope.builtin.live_grep`  | Text in Dateien suchen |

### 📦 Git (Gitsigns)

| Shortcut     | Command                              | Funktion                         |
| ------------ | ------------------------------------ | -------------------------------- |
| `<leader>tb` | `Gitsigns toggle_current_line_blame` | Git Blame ein/ausschalten        |
| `<leader>td` | `Gitsigns toggle_deleted`            | Gelöschte Zeilen ein/ausschalten |
| `<leader>tw` | `Gitsigns toggle_word_diff`          | Wort-Diff ein/ausschalten        |

### 🚀 LazyGit

| Shortcut     | Command   | Funktion       |
| ------------ | --------- | -------------- |
| `<leader>lg` | `LazyGit` | LazyGit öffnen |

### 💄 Conform
| Shortcut     | Command        | Funktion        |
| ------------ | -------------- | --------------  |
| <leader>cF   | conform.format | Autoformat file |

### 🌴 Undotree
| Shortcut     | Command          | Funktion        |
| ------------ | ---------------- | --------------  |
| <leader>u    | Undotree require | Toggle Undotree |

## ⌨️ Allgemeine Vim-Keymaps

### Fenster-Management

| Shortcut     | Command  | Funktion                    |
| ------------ | -------- | --------------------------- |
| `<leader>v`  | `<C-w>v` | Fenster vertikal teilen     |
| `<leader>h`  | `<C-w>s` | Fenster horizontal teilen   |
| `<leader>se` | `<C-w>=` | Fenstergrößen angleichen    |
| `<leader>xs` | `:close` | Aktuelles Fenster schließen |

### Buffer-Navigation

| Shortcut    | Command      | Funktion               |
| ----------- | ------------ | ---------------------- |
| `<Tab>`     | `:bnext`     | Zum nächsten Buffer    |
| `<S-Tab>`   | `:bprevious` | Zum vorherigen Buffer  |
| `<leader>x` | `:Bdelete!`  | Buffer schließen       |
| `<leader>b` | `:enew`      | Neuen Buffer erstellen |

### Fenster-Navigation

| Shortcut | Command      | Funktion            |
| -------- | ------------ | ------------------- |
| `<C-h>`  | `<C-w><C-h>` | Zum linken Fenster  |
| `<C-l>`  | `<C-w><C-l>` | Zum rechten Fenster |
| `<C-j>`  | `<C-w><C-j>` | Zum unteren Fenster |
| `<C-k>`  | `<C-w><C-k>` | Zum oberen Fenster  |

### Fenster-Größe

| Shortcut  | Command               | Funktion                       |
| --------- | --------------------- | ------------------------------ |
| `<Up>`    | `:resize -2`          | Fenster verkleinern            |
| `<Down>`  | `:resize +2`          | Fenster vergrößern             |
| `<Left>`  | `:vertical resize -2` | Fenster horizontal verkleinern |
| `<Right>` | `:vertical resize +2` | Fenster horizontal vergrößern  |

### Tab-Management

| Shortcut     | Command     | Funktion           |
| ------------ | ----------- | ------------------ |
| `<leader>to` | `:tabnew`   | Neuen Tab öffnen   |
| `<leader>tx` | `:tabclose` | Tab schließen      |
| `<leader>tn` | `:tabn`     | Zum nächsten Tab   |
| `<leader>tp` | `:tabp`     | Zum vorherigen Tab |

### Indentation

| Shortcut     | Command     | Funktion           |
| ------------ | ----------- | ------------------ |
|  | `:IBLToggle`   | Toggle Indentation Lines |
|  | `:IBLToggleScope`  | Toggle Indentation Lines Scope |

### CodeCompanion
| Shortcut     | Command     | Funktion           |
| ------------ | ----------- | ------------------ |
| <leader>aa | :CodeCompanionChat Toggle | Toggle Ai Window |
| <leader>ca | :CodeCompanionActions | Open Companion Actions |
| 'v', 'ga' | :CodeCompanionActions | Open Companion Actions |

### Which-Key
| Mode | Shortcut  | Command               | Funktion                       |
| ---- | --------- | --------------------- | ------------------------------ |
|      | <bs>      |                       | Go up one level                |
| n    | '         |                       | Show list of marks             |
| n    | `         |                       | Show list of marks             |
| n    | "         |                       | Show list of registers         |
| i    | <C-r>     |                       | Show list of registers         |

### Illuminate
| Shortcut  | Command               | Funktion                       |
| --------- | --------------------- | ------------------------------ |
| <a-n>     |                       | Next occurance of hovered word |
| <a-p>     |                       | Prev occurance of hovered word |


## 📝 Hinweise

- `<leader>` ist standardmäßig die Leertaste
- `<C->` steht für die Strg/Control-Taste
- `<S->` steht für die Shift-Taste
- `<leader>sk` gibt mir ein telescope für die keymaps
