# pastel_sorbet.nvim

A soft, pastel Neovim colorscheme with rich purples and vibrant accents.

## Installation

### lazy.nvim

```lua
{
  "yourusername/pastel_sorbet.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("pastel_sorbet")
  end,
}
```

### packer.nvim

```lua
use {
  "yourusername/pastel_sorbet.nvim",
  config = function()
    vim.cmd.colorscheme("pastel_sorbet")
  end,
}
```

### Manual

Clone to your pack directory:

```sh
git clone https://github.com/Memnoc/pastel_sorbet.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/pastel_sorbet.nvim
```

## Usage

```lua
vim.cmd.colorscheme("pastel_sorbet")
```

## Palette

| Color         | Hex       |
|---------------|-----------|
| bg            | `#1c1826` |
| bg_dark       | `#14111c` |
| bg_ui         | `#2e2840` |
| fg            | `#e8e4f2` |
| fg_dim        | `#cdc8da` |
| grey          | `#726a88` |
| grey_light    | `#9c94b2` |
| red           | `#ff8596` |
| red_bright    | `#ffa0b0` |
| green         | `#6ef298` |
| green_bright  | `#52edb8` |
| yellow        | `#ffd85c` |
| yellow_bright | `#ffe48a` |
| blue          | `#7db8ff` |
| blue_bright   | `#a8d0ff` |
| purple        | `#c88df7` |
| purple_bright | `#dba8ff` |
| cyan          | `#4cf0d8` |
| cyan_bright   | `#7af5e4` |
| pink          | `#ff8ed0` |
| lime          | `#b8f55c` |
| teal          | `#3df2c4` |
| amber         | `#ffa85c` |

## Supported Plugins

- Treesitter
- LSP Semantic Tokens
- Diagnostics
- Telescope
- Mini.pick, Mini.jump2d, Mini.statusline
- nvim-cmp / blink.cmp
- Gitsigns
- Lazy.nvim
- Mason
- Which-key
- Indent-blankline
- Nvim-tree / Neo-tree / Oil
- Trouble
- Noice
- Notify
- Flash / Hop
- Diffview
- Dashboard / Alpha / Snacks
- Render-markdown

## License

MIT
