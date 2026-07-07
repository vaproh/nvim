# Neovim Config

AstroNvim v6 configuration with Python development focus.

## Plugins

| Plugin | Purpose |
|--------|---------|
| [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) | Colorscheme (transparent) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | AI code completion |
| [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) | File explorer |
| [venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim) | Python venv switching |
| [basedpyright](https://github.com/nicholasgasior/astrocommunity) | Python LSP |
| [ruff](https://github.com/nicholasgasior/astrocommunity) | Python linter/formatter |
| [mini.comment](https://github.com/nicholasgasior/astrocommunity) | Commenting |
| [markdown-preview.nvim](https://github.com/nicholasgasior/astrocommunity) | Markdown preview |
| [render-markdown.nvim](https://github.com/nicholasgasior/astrocommunity) | Markdown rendering |
| [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) | Function signature help |
| [presence.nvim](https://github.com/andweeb/presence.nvim) | Discord Rich Presence |

## Keybindings

Leader key: `Space`

### General

| Key | Action |
|-----|--------|
| `jk` | Exit insert mode |
| `Ctrl-s` | Save file |
| `Ctrl-a` | Select all |
| `+` / `-` | Increment / decrement number |
| `Ctrl-/` | Toggle comment |

### Navigation

| Key | Action |
|-----|--------|
| `Ctrl-h/j/k/l` | Move between windows |
| `Shift-Arrow` | Resize windows |
| `]b` / `[b` | Next / previous buffer |
| `<leader>sh` | Horizontal split |
| `<leader>sv` | Vertical split |
| `<leader>bd` | Close buffer |

### File Explorer (Yazi)

| Key | Action |
|-----|--------|
| `<leader>-` | Open Yazi at current file |
| `<leader>cw` | Open Yazi in nvim working dir |
| `Ctrl-Up` | Toggle last Yazi session |

### Python

| Key | Action |
|-----|--------|
| `<leader>pv` | Select Python virtual environment |

### Copilot

| Key | Action |
|-----|--------|
| `Ctrl-l` | Accept suggestion |
| `Alt-]` / `Alt-[` | Next / previous suggestion |
| `Ctrl-]` | Dismiss suggestion |

## Install

```shell
git clone https://github.com/<user>/<repo> ~/.config/nvim
nvim
```
