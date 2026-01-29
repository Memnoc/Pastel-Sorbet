-- Pastel Sorbet is the deault colorschme in PureNvim: https://github.com/Memnoc/pure-nvim/blob/main/README.md
-- A soft, pastel colorscheme with rich purples and vibrant accents

-- Globals {{{

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "pastel_sorbet"
vim.o.termguicolors = true

local hl = vim.api.nvim_set_hl

-- }}}
-- Palette
local c = {
  bg = "#1c1826",
  bg_dark = "#14111c",
  bg_ui = "#2e2840",
  fg = "#e8e4f2",
  fg_dim = "#cdc8da",
  grey = "#726a88",
  grey_light = "#9c94b2",
  linenr = "#4e4662",
  red = "#ff8596",
  red_bright = "#ffa0b0",
  green = "#6ef298",
  green_bright = "#52edb8",
  yellow = "#ffd85c",
  yellow_bright = "#ffe48a",
  blue = "#7db8ff",
  blue_bright = "#a8d0ff",
  purple = "#c88df7",
  purple_bright = "#dba8ff",
  cyan = "#4cf0d8",
  cyan_bright = "#7af5e4",
  pink = "#ff8ed0",
  lime = "#b8f55c",
  teal = "#3df2c4",
  amber = "#ffa85c",
  none = "NONE",
}

-- Base
hl(0, "Normal", { fg = c.fg, bg = c.bg })
hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
hl(0, "Visual", { bg = c.bg_ui })
hl(0, "CursorLine", { bg = c.bg_ui })
hl(0, "CursorColumn", { bg = c.bg_ui })
hl(0, "LineNr", { fg = c.linenr })
hl(0, "CursorLineNr", { fg = c.yellow, bold = true })
hl(0, "Search", { fg = c.bg, bg = c.yellow })
hl(0, "IncSearch", { fg = c.bg, bg = c.amber })
hl(0, "CurSearch", { fg = c.bg, bg = c.amber })
hl(0, "MatchParen", { fg = c.amber, bold = true })
hl(0, "NonText", { fg = c.linenr })
hl(0, "SpecialKey", { fg = c.linenr })
hl(0, "SignColumn", { bg = c.bg })
hl(0, "ColorColumn", { bg = c.bg_ui })
hl(0, "VertSplit", { fg = c.purple })
hl(0, "WinSeparator", { fg = c.purple })
hl(0, "Cursor", { fg = c.bg, bg = c.fg })
hl(0, "lCursor", { fg = c.bg, bg = c.fg })
hl(0, "CursorIM", { fg = c.bg, bg = c.fg })
hl(0, "TermCursor", { fg = c.bg, bg = c.fg })
hl(0, "TermCursorNC", { fg = c.bg, bg = c.grey })
hl(0, "Conceal", { fg = c.grey })
hl(0, "Directory", { fg = c.blue_bright })
hl(0, "EndOfBuffer", { fg = c.bg_ui })
hl(0, "ErrorMsg", { fg = c.red_bright })
hl(0, "WarningMsg", { fg = c.yellow_bright })
hl(0, "ModeMsg", { fg = c.fg, bold = true })
hl(0, "MoreMsg", { fg = c.green_bright })
hl(0, "Question", { fg = c.blue_bright })
hl(0, "Substitute", { fg = c.bg, bg = c.yellow })
hl(0, "WildMenu", { fg = c.bg, bg = c.purple_bright })
hl(0, "Whitespace", { fg = c.linenr })
hl(0, "DiffAdd", { fg = c.green, bg = "#1a2e1a" })
hl(0, "DiffChange", { fg = c.yellow, bg = "#2e2a1a" })
hl(0, "DiffDelete", { fg = c.red, bg = "#2e1a1a" })
hl(0, "DiffText", { fg = c.bg, bg = c.yellow })
hl(0, "SpellBad", { sp = c.red_bright, undercurl = true })
hl(0, "SpellCap", { sp = c.yellow_bright, undercurl = true })
hl(0, "SpellLocal", { sp = c.cyan_bright, undercurl = true })
hl(0, "SpellRare", { sp = c.purple_bright, undercurl = true })

-- Syntax
hl(0, "Boolean", { fg = c.amber })
hl(0, "Number", { fg = c.amber })
hl(0, "Float", { fg = c.amber })
hl(0, "Constant", { fg = c.amber })
hl(0, "String", { fg = c.teal })
hl(0, "Character", { fg = c.green })
hl(0, "Identifier", { fg = c.fg })
hl(0, "Function", { fg = c.blue_bright })
hl(0, "Statement", { fg = c.purple_bright })
hl(0, "Keyword", { fg = c.purple_bright })
hl(0, "Conditional", { fg = c.purple_bright })
hl(0, "Repeat", { fg = c.purple_bright })
hl(0, "Label", { fg = c.purple_bright })
hl(0, "Exception", { fg = c.purple_bright })
hl(0, "Operator", { fg = c.cyan_bright })
hl(0, "Type", { fg = c.blue_bright })
hl(0, "StorageClass", { fg = c.purple_bright })
hl(0, "Structure", { fg = c.blue_bright })
hl(0, "Typedef", { fg = c.blue_bright })
hl(0, "PreProc", { fg = c.cyan_bright })
hl(0, "Include", { fg = c.purple_bright })
hl(0, "Define", { fg = c.purple_bright })
hl(0, "Macro", { fg = c.cyan_bright })
hl(0, "PreCondit", { fg = c.cyan_bright })
hl(0, "Comment", { fg = c.grey, italic = true })
hl(0, "Special", { fg = c.cyan_bright })
hl(0, "SpecialChar", { fg = c.cyan_bright })
hl(0, "Tag", { fg = c.pink })
hl(0, "Delimiter", { fg = c.fg_dim })
hl(0, "SpecialComment", { fg = c.grey_light, italic = true })
hl(0, "Debug", { fg = c.red_bright })
hl(0, "Underlined", { fg = c.blue_bright, underline = true })
hl(0, "Ignore", { fg = c.grey })
hl(0, "Error", { fg = c.red_bright })
hl(0, "Todo", { fg = c.bg, bg = c.yellow, bold = true })
hl(0, "Title", { fg = c.yellow_bright, bold = true })

-- Treesitter
hl(0, "@variable", { fg = c.fg })
hl(0, "@variable.builtin", { fg = c.red })
hl(0, "@variable.parameter", { fg = c.fg })
hl(0, "@variable.member", { fg = c.fg })
hl(0, "@constant", { fg = c.amber })
hl(0, "@constant.builtin", { fg = c.amber })
hl(0, "@constant.macro", { fg = c.amber })
hl(0, "@module", { fg = c.blue })
hl(0, "@label", { fg = c.purple_bright })
hl(0, "@string", { fg = c.teal })
hl(0, "@string.documentation", { fg = c.teal })
hl(0, "@string.regexp", { fg = c.cyan })
hl(0, "@string.escape", { fg = c.cyan_bright })
hl(0, "@string.special", { fg = c.cyan_bright })
hl(0, "@character", { fg = c.green })
hl(0, "@character.special", { fg = c.cyan_bright })
hl(0, "@boolean", { fg = c.amber })
hl(0, "@number", { fg = c.amber })
hl(0, "@number.float", { fg = c.amber })
hl(0, "@type", { fg = c.blue_bright })
hl(0, "@type.builtin", { fg = c.blue })
hl(0, "@type.definition", { fg = c.blue_bright })
hl(0, "@type.qualifier", { fg = c.purple_bright })
hl(0, "@attribute", { fg = c.cyan })
hl(0, "@property", { fg = c.fg })
hl(0, "@function", { fg = c.blue_bright })
hl(0, "@function.builtin", { fg = c.blue })
hl(0, "@function.call", { fg = c.blue_bright })
hl(0, "@function.macro", { fg = c.cyan })
hl(0, "@function.method", { fg = c.blue_bright })
hl(0, "@function.method.call", { fg = c.blue_bright })
hl(0, "@constructor", { fg = c.blue_bright })
hl(0, "@operator", { fg = c.cyan_bright })
hl(0, "@keyword", { fg = c.purple_bright })
hl(0, "@keyword.coroutine", { fg = c.purple_bright })
hl(0, "@keyword.function", { fg = c.purple_bright })
hl(0, "@keyword.operator", { fg = c.purple_bright })
hl(0, "@keyword.import", { fg = c.purple_bright })
hl(0, "@keyword.storage", { fg = c.purple_bright })
hl(0, "@keyword.repeat", { fg = c.purple_bright })
hl(0, "@keyword.return", { fg = c.purple_bright })
hl(0, "@keyword.debug", { fg = c.red_bright })
hl(0, "@keyword.exception", { fg = c.purple_bright })
hl(0, "@keyword.conditional", { fg = c.purple_bright })
hl(0, "@keyword.conditional.ternary", { fg = c.purple_bright })
hl(0, "@keyword.directive", { fg = c.cyan_bright })
hl(0, "@keyword.directive.define", { fg = c.cyan_bright })
hl(0, "@punctuation.delimiter", { fg = c.fg_dim })
hl(0, "@punctuation.bracket", { fg = c.fg_dim })
hl(0, "@punctuation.special", { fg = c.cyan_bright })
hl(0, "@comment", { fg = c.grey, italic = true })
hl(0, "@comment.documentation", { fg = c.grey_light, italic = true })
hl(0, "@comment.error", { fg = c.red_bright })
hl(0, "@comment.warning", { fg = c.yellow_bright })
hl(0, "@comment.todo", { fg = c.bg, bg = c.yellow, bold = true })
hl(0, "@comment.note", { fg = c.blue_bright })
hl(0, "@markup.heading", { fg = c.yellow_bright, bold = true })
hl(0, "@markup.heading.1", { fg = c.yellow_bright, bold = true })
hl(0, "@markup.heading.2", { fg = c.purple_bright, bold = true })
hl(0, "@markup.heading.3", { fg = c.blue_bright, bold = true })
hl(0, "@markup.heading.4", { fg = c.cyan_bright, bold = true })
hl(0, "@markup.heading.5", { fg = c.green_bright, bold = true })
hl(0, "@markup.heading.6", { fg = c.pink, bold = true })
hl(0, "@markup.strong", { bold = true })
hl(0, "@markup.italic", { italic = true })
hl(0, "@markup.strikethrough", { strikethrough = true })
hl(0, "@markup.underline", { underline = true })
hl(0, "@markup.quote", { fg = c.grey_light, italic = true })
hl(0, "@markup.math", { fg = c.cyan })
hl(0, "@markup.environment", { fg = c.purple })
hl(0, "@markup.link", { fg = c.blue_bright, underline = true })
hl(0, "@markup.link.label", { fg = c.blue })
hl(0, "@markup.link.url", { fg = c.cyan, underline = true })
hl(0, "@markup.raw", { fg = c.green })
hl(0, "@markup.raw.block", { fg = c.green })
hl(0, "@markup.list", { fg = c.cyan })
hl(0, "@markup.list.checked", { fg = c.green_bright })
hl(0, "@markup.list.unchecked", { fg = c.grey })
hl(0, "@diff.plus", { fg = c.green })
hl(0, "@diff.minus", { fg = c.red })
hl(0, "@diff.delta", { fg = c.yellow })
hl(0, "@tag", { fg = c.pink })
hl(0, "@tag.attribute", { fg = c.cyan })
hl(0, "@tag.delimiter", { fg = c.fg_dim })

-- LSP Semantic Tokens
hl(0, "@lsp.type.class", { link = "@type" })
hl(0, "@lsp.type.decorator", { link = "@attribute" })
hl(0, "@lsp.type.enum", { link = "@type" })
hl(0, "@lsp.type.enumMember", { link = "@constant" })
hl(0, "@lsp.type.function", { link = "@function" })
hl(0, "@lsp.type.interface", { link = "@type" })
hl(0, "@lsp.type.macro", { link = "@function.macro" })
hl(0, "@lsp.type.method", { link = "@function.method" })
hl(0, "@lsp.type.namespace", { link = "@module" })
hl(0, "@lsp.type.parameter", { link = "@variable.parameter" })
hl(0, "@lsp.type.property", { link = "@property" })
hl(0, "@lsp.type.struct", { link = "@type" })
hl(0, "@lsp.type.type", { link = "@type" })
hl(0, "@lsp.type.typeParameter", { link = "@type" })
hl(0, "@lsp.type.variable", { link = "@variable" })

-- Diagnostics
hl(0, "DiagnosticError", { fg = c.red_bright })
hl(0, "DiagnosticWarn", { fg = c.yellow_bright })
hl(0, "DiagnosticInfo", { fg = c.blue_bright })
hl(0, "DiagnosticHint", { fg = c.cyan_bright })
hl(0, "DiagnosticOk", { fg = c.green_bright })
hl(0, "DiagnosticVirtualTextError", { fg = c.red_bright, bg = "#2a1a1c" })
hl(0, "DiagnosticVirtualTextWarn", { fg = c.yellow_bright, bg = "#2a2618" })
hl(0, "DiagnosticVirtualTextInfo", { fg = c.blue_bright, bg = "#1a202a" })
hl(0, "DiagnosticVirtualTextHint", { fg = c.cyan_bright, bg = "#1a2a28" })
hl(0, "DiagnosticVirtualTextOk", { fg = c.green_bright, bg = "#1a2a1a" })
hl(0, "DiagnosticUnderlineError", { sp = c.red_bright, undercurl = true })
hl(0, "DiagnosticUnderlineWarn", { sp = c.yellow_bright, undercurl = true })
hl(0, "DiagnosticUnderlineInfo", { sp = c.blue_bright, undercurl = true })
hl(0, "DiagnosticUnderlineHint", { sp = c.cyan_bright, undercurl = true })
hl(0, "DiagnosticUnderlineOk", { sp = c.green_bright, undercurl = true })
hl(0, "DiagnosticFloatingError", { fg = c.red_bright })
hl(0, "DiagnosticFloatingWarn", { fg = c.yellow_bright })
hl(0, "DiagnosticFloatingInfo", { fg = c.blue_bright })
hl(0, "DiagnosticFloatingHint", { fg = c.cyan_bright })
hl(0, "DiagnosticFloatingOk", { fg = c.green_bright })
hl(0, "DiagnosticSignError", { fg = c.red_bright })
hl(0, "DiagnosticSignWarn", { fg = c.yellow_bright })
hl(0, "DiagnosticSignInfo", { fg = c.blue_bright })
hl(0, "DiagnosticSignHint", { fg = c.cyan_bright })
hl(0, "DiagnosticSignOk", { fg = c.green_bright })

-- Completion (Pmenu)
hl(0, "Pmenu", { fg = c.fg, bg = c.bg_dark })
hl(0, "PmenuSel", { fg = c.bg, bg = c.lime, bold = true })
hl(0, "PmenuKind", { fg = c.purple, bg = c.bg_dark })
hl(0, "PmenuKindSel", { fg = c.bg, bg = c.lime })
hl(0, "PmenuExtra", { fg = c.grey, bg = c.bg_dark })
hl(0, "PmenuExtraSel", { fg = c.bg, bg = c.lime })
hl(0, "PmenuSbar", { bg = c.bg_dark })
hl(0, "PmenuThumb", { bg = c.purple })
hl(0, "PmenuMatch", { fg = c.purple_bright, bg = c.bg_dark, bold = true })
hl(0, "PmenuMatchSel", { fg = c.bg, bg = c.lime, bold = true })

-- Float windows
hl(0, "NormalFloat", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "FloatBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "FloatTitle", { fg = c.purple_bright, bg = c.bg_dark, bold = true })
hl(0, "FloatFooter", { fg = c.grey, bg = c.bg_dark })

-- Tabline
hl(0, "TabLine", { fg = c.grey, bg = c.bg_dark })
hl(0, "TabLineSel", { fg = c.purple_bright, bg = c.bg_dark, bold = true, sp = c.purple, underline = true })
hl(0, "TabLineFill", { bg = c.bg_dark })

-- Statusline
hl(0, "StatusLine", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "StatusLineNC", { fg = c.grey, bg = c.bg_dark })
hl(0, "StatusLineBold", { fg = c.fg, bg = c.bg_dark, bold = true })
hl(0, "StatusLineMode", { fg = c.bg, bg = c.purple, bold = true })
hl(0, "StatusLineModeInsert", { fg = c.bg, bg = c.green, bold = true })
hl(0, "StatusLineModeVisual", { fg = c.bg, bg = c.yellow, bold = true })
hl(0, "StatusLineModeReplace", { fg = c.bg, bg = c.red, bold = true })
hl(0, "StatusLineModeCommand", { fg = c.bg, bg = c.amber, bold = true })
hl(0, "StatusLineGit", { fg = c.purple_bright, bg = c.bg_dark })
hl(0, "StatusLineFile", { fg = c.blue_bright, bg = c.bg_dark })
hl(0, "StatusLineFileType", { fg = c.teal, bg = c.bg_dark })
hl(0, "StatusLinePos", { fg = c.grey_light, bg = c.bg_dark })
hl(0, "StatusLineSep", { fg = c.purple, bg = c.bg_dark })

-- Winbar
hl(0, "WinBar", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "WinBarNC", { fg = c.grey, bg = c.bg_dark })

-- Fold
hl(0, "Folded", { fg = c.grey_light, bg = c.bg_dark })
hl(0, "FoldColumn", { fg = c.linenr, bg = c.none })

-- LSP
hl(0, "LspReferenceText", { bg = c.bg_ui })
hl(0, "LspReferenceRead", { bg = c.bg_ui })
hl(0, "LspReferenceWrite", { bg = c.bg_ui })
hl(0, "LspSignatureActiveParameter", { fg = c.amber, bold = true })
hl(0, "LspCodeLens", { fg = c.grey })
hl(0, "LspCodeLensSeparator", { fg = c.linenr })
hl(0, "LspInlayHint", { fg = c.grey, bg = c.bg_dark })

-- Git signs
hl(0, "GitSignsAdd", { fg = c.green })
hl(0, "GitSignsChange", { fg = c.yellow })
hl(0, "GitSignsDelete", { fg = c.red })
hl(0, "GitSignsCurrentLineBlame", { fg = c.grey })

-- Telescope
hl(0, "TelescopeNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "TelescopeBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "TelescopeTitle", { fg = c.purple_bright, bold = true })
hl(0, "TelescopePromptNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "TelescopePromptBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "TelescopePromptTitle", { fg = c.purple_bright, bold = true })
hl(0, "TelescopePromptPrefix", { fg = c.purple_bright })
hl(0, "TelescopePromptCounter", { fg = c.grey })
hl(0, "TelescopeResultsNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "TelescopeResultsBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "TelescopeResultsTitle", { fg = c.purple_bright, bold = true })
hl(0, "TelescopePreviewNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "TelescopePreviewBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "TelescopePreviewTitle", { fg = c.purple_bright, bold = true })
hl(0, "TelescopeSelection", { fg = c.fg, bg = c.bg_ui })
hl(0, "TelescopeSelectionCaret", { fg = c.purple_bright, bg = c.bg_ui })
hl(0, "TelescopeMultiSelection", { fg = c.cyan, bg = c.bg_ui })
hl(0, "TelescopeMatching", { fg = c.purple_bright, bold = true })

-- Mini.jump2d
hl(0, "MiniJump2dSpot", { fg = "#ffffff", bg = "#875faf", bold = true, nocombine = true })
hl(0, "MiniJump2dSpotAhead", { fg = "#ffffff", bg = "#875faf", nocombine = true })
hl(0, "MiniJump2dSpotUnique", { fg = "#ffffff", bg = "#875faf", bold = true, nocombine = true })
hl(0, "MiniJump2dDim", { fg = "#444444", nocombine = true })

-- Mini.statusline
hl(0, "MiniStatuslineModeNormal", { fg = c.bg, bg = c.purple, bold = true })
hl(0, "MiniStatuslineModeInsert", { fg = c.bg, bg = c.green, bold = true })
hl(0, "MiniStatuslineModeVisual", { fg = c.bg, bg = c.yellow, bold = true })
hl(0, "MiniStatuslineModeReplace", { fg = c.bg, bg = c.red, bold = true })
hl(0, "MiniStatuslineModeCommand", { fg = c.bg, bg = c.amber, bold = true })
hl(0, "MiniStatuslineModeOther", { fg = c.bg, bg = c.cyan, bold = true })
hl(0, "MiniStatuslineFilename", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "MiniStatuslineFileinfo", { fg = c.grey_light, bg = c.bg_dark })
hl(0, "MiniStatuslineDevinfo", { fg = c.grey_light, bg = c.bg_dark })
hl(0, "MiniStatuslineInactive", { fg = c.grey, bg = c.bg_dark })

-- Mini.pick
hl(0, "MiniPickNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "MiniPickBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "MiniPickBorderText", { fg = c.purple_bright, bg = c.bg_dark })
hl(0, "MiniPickPrompt", { fg = c.purple_bright, bg = c.bg_dark })
hl(0, "MiniPickMatchCurrent", { bg = c.bg_ui })
hl(0, "MiniPickMatchMarked", { fg = c.cyan, bg = c.bg_ui })
hl(0, "MiniPickMatchRanges", { fg = c.purple_bright, bold = true })

-- Nvim-cmp
hl(0, "CmpItemAbbr", { fg = c.fg })
hl(0, "CmpItemAbbrDeprecated", { fg = c.grey, strikethrough = true })
hl(0, "CmpItemAbbrMatch", { fg = c.purple_bright, bold = true })
hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.purple_bright, bold = true })
hl(0, "CmpItemKind", { fg = c.purple })
hl(0, "CmpItemKindClass", { fg = c.blue_bright })
hl(0, "CmpItemKindColor", { fg = c.pink })
hl(0, "CmpItemKindConstant", { fg = c.amber })
hl(0, "CmpItemKindConstructor", { fg = c.blue_bright })
hl(0, "CmpItemKindEnum", { fg = c.blue_bright })
hl(0, "CmpItemKindEnumMember", { fg = c.amber })
hl(0, "CmpItemKindEvent", { fg = c.purple })
hl(0, "CmpItemKindField", { fg = c.fg })
hl(0, "CmpItemKindFile", { fg = c.fg_dim })
hl(0, "CmpItemKindFolder", { fg = c.blue })
hl(0, "CmpItemKindFunction", { fg = c.blue_bright })
hl(0, "CmpItemKindInterface", { fg = c.blue_bright })
hl(0, "CmpItemKindKeyword", { fg = c.purple_bright })
hl(0, "CmpItemKindMethod", { fg = c.blue_bright })
hl(0, "CmpItemKindModule", { fg = c.blue })
hl(0, "CmpItemKindOperator", { fg = c.cyan_bright })
hl(0, "CmpItemKindProperty", { fg = c.fg })
hl(0, "CmpItemKindReference", { fg = c.fg })
hl(0, "CmpItemKindSnippet", { fg = c.teal })
hl(0, "CmpItemKindStruct", { fg = c.blue_bright })
hl(0, "CmpItemKindText", { fg = c.fg })
hl(0, "CmpItemKindTypeParameter", { fg = c.blue_bright })
hl(0, "CmpItemKindUnit", { fg = c.amber })
hl(0, "CmpItemKindValue", { fg = c.amber })
hl(0, "CmpItemKindVariable", { fg = c.fg })
hl(0, "CmpItemMenu", { fg = c.grey })

-- Blink.cmp
hl(0, "BlinkCmpMenu", { fg = c.fg, bg = c.bg_dark })
hl(0, "BlinkCmpMenuBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "BlinkCmpMenuSelection", { fg = c.bg, bg = c.lime, bold = true })
hl(0, "BlinkCmpLabel", { fg = c.fg })
hl(0, "BlinkCmpLabelDeprecated", { fg = c.grey, strikethrough = true })
hl(0, "BlinkCmpLabelMatch", { fg = c.purple_bright, bold = true })
hl(0, "BlinkCmpKind", { fg = c.purple })
hl(0, "BlinkCmpDoc", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "BlinkCmpDocBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "BlinkCmpDocSeparator", { fg = c.purple, bg = c.bg_dark })
hl(0, "BlinkCmpSignatureHelp", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "BlinkCmpSignatureHelpBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "BlinkCmpSignatureHelpActiveParameter", { fg = c.amber, bold = true })

-- Lazy.nvim
hl(0, "LazyNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "LazyButton", { fg = c.fg, bg = c.bg_ui })
hl(0, "LazyButtonActive", { fg = c.bg, bg = c.purple, bold = true })
hl(0, "LazyH1", { fg = c.bg, bg = c.purple, bold = true })
hl(0, "LazyH2", { fg = c.purple_bright, bold = true })
hl(0, "LazySpecial", { fg = c.purple_bright })
hl(0, "LazyCommit", { fg = c.green })
hl(0, "LazyCommitType", { fg = c.cyan })
hl(0, "LazyReasonPlugin", { fg = c.blue_bright })
hl(0, "LazyReasonEvent", { fg = c.yellow })
hl(0, "LazyReasonKeys", { fg = c.pink })
hl(0, "LazyReasonCmd", { fg = c.amber })
hl(0, "LazyReasonFt", { fg = c.teal })

-- Mason
hl(0, "MasonNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "MasonHeader", { fg = c.bg, bg = c.purple, bold = true })
hl(0, "MasonHeaderSecondary", { fg = c.bg, bg = c.blue, bold = true })
hl(0, "MasonHighlight", { fg = c.purple_bright })
hl(0, "MasonHighlightBlock", { fg = c.bg, bg = c.purple })
hl(0, "MasonHighlightBlockBold", { fg = c.bg, bg = c.purple, bold = true })
hl(0, "MasonHighlightSecondary", { fg = c.blue_bright })
hl(0, "MasonMuted", { fg = c.grey })
hl(0, "MasonMutedBlock", { fg = c.grey, bg = c.bg_ui })

-- Which-key
hl(0, "WhichKey", { fg = c.purple_bright })
hl(0, "WhichKeyGroup", { fg = c.blue_bright })
hl(0, "WhichKeySeparator", { fg = c.grey })
hl(0, "WhichKeyDesc", { fg = c.fg })
hl(0, "WhichKeyFloat", { bg = c.bg_dark })
hl(0, "WhichKeyBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "WhichKeyValue", { fg = c.grey })

-- Indent-blankline
hl(0, "IblIndent", { fg = c.bg_ui })
hl(0, "IblScope", { fg = c.purple })
hl(0, "IndentBlanklineChar", { fg = c.bg_ui })
hl(0, "IndentBlanklineContextChar", { fg = c.purple })

-- Nvim-tree
hl(0, "NvimTreeNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "NvimTreeNormalNC", { fg = c.fg, bg = c.bg_dark })
hl(0, "NvimTreeRootFolder", { fg = c.purple_bright, bold = true })
hl(0, "NvimTreeFolderName", { fg = c.blue })
hl(0, "NvimTreeFolderIcon", { fg = c.blue })
hl(0, "NvimTreeOpenedFolderName", { fg = c.blue_bright })
hl(0, "NvimTreeEmptyFolderName", { fg = c.grey })
hl(0, "NvimTreeSymlink", { fg = c.cyan })
hl(0, "NvimTreeSpecialFile", { fg = c.pink })
hl(0, "NvimTreeGitDirty", { fg = c.yellow })
hl(0, "NvimTreeGitNew", { fg = c.green })
hl(0, "NvimTreeGitDeleted", { fg = c.red })
hl(0, "NvimTreeGitStaged", { fg = c.green_bright })
hl(0, "NvimTreeIndentMarker", { fg = c.bg_ui })

-- Neo-tree
hl(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg_dark })
hl(0, "NeoTreeRootName", { fg = c.purple_bright, bold = true })
hl(0, "NeoTreeDirectoryName", { fg = c.blue })
hl(0, "NeoTreeDirectoryIcon", { fg = c.blue })
hl(0, "NeoTreeFileName", { fg = c.fg })
hl(0, "NeoTreeFileIcon", { fg = c.fg_dim })
hl(0, "NeoTreeSymbolicLinkTarget", { fg = c.cyan })
hl(0, "NeoTreeGitAdded", { fg = c.green })
hl(0, "NeoTreeGitConflict", { fg = c.red_bright })
hl(0, "NeoTreeGitDeleted", { fg = c.red })
hl(0, "NeoTreeGitModified", { fg = c.yellow })
hl(0, "NeoTreeGitUntracked", { fg = c.grey_light })
hl(0, "NeoTreeIndentMarker", { fg = c.bg_ui })
hl(0, "NeoTreeTitleBar", { fg = c.bg, bg = c.purple })

-- Oil
hl(0, "OilDir", { fg = c.blue })
hl(0, "OilDirIcon", { fg = c.blue })
hl(0, "OilLink", { fg = c.cyan })
hl(0, "OilLinkTarget", { fg = c.grey })
hl(0, "OilCopy", { fg = c.green })
hl(0, "OilMove", { fg = c.yellow })
hl(0, "OilChange", { fg = c.yellow })
hl(0, "OilCreate", { fg = c.green })
hl(0, "OilDelete", { fg = c.red })
hl(0, "OilPermissionRead", { fg = c.green })
hl(0, "OilPermissionWrite", { fg = c.yellow })
hl(0, "OilPermissionExecute", { fg = c.red })
hl(0, "OilTypeDir", { fg = c.blue })
hl(0, "OilTypeFile", { fg = c.fg })
hl(0, "OilTypeLink", { fg = c.cyan })
hl(0, "OilSize", { fg = c.grey })
hl(0, "OilMtime", { fg = c.grey })

-- Trouble
hl(0, "TroubleNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "TroubleNormalNC", { fg = c.fg, bg = c.bg_dark })
hl(0, "TroubleCount", { fg = c.purple_bright, bold = true })
hl(0, "TroubleText", { fg = c.fg })

-- Noice
hl(0, "NoiceCmdline", { fg = c.fg })
hl(0, "NoiceCmdlinePopup", { fg = c.fg, bg = c.bg_dark })
hl(0, "NoiceCmdlinePopupBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "NoiceCmdlineIcon", { fg = c.purple_bright })
hl(0, "NoiceCmdlinePrompt", { fg = c.purple_bright })
hl(0, "NoiceConfirm", { fg = c.fg, bg = c.bg_dark })
hl(0, "NoiceConfirmBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "NoiceMini", { fg = c.fg_dim, bg = c.bg_dark })

-- Notify
hl(0, "NotifyERRORBorder", { fg = c.red })
hl(0, "NotifyERRORIcon", { fg = c.red_bright })
hl(0, "NotifyERRORTitle", { fg = c.red_bright })
hl(0, "NotifyWARNBorder", { fg = c.yellow })
hl(0, "NotifyWARNIcon", { fg = c.yellow_bright })
hl(0, "NotifyWARNTitle", { fg = c.yellow_bright })
hl(0, "NotifyINFOBorder", { fg = c.blue })
hl(0, "NotifyINFOIcon", { fg = c.blue_bright })
hl(0, "NotifyINFOTitle", { fg = c.blue_bright })
hl(0, "NotifyDEBUGBorder", { fg = c.grey })
hl(0, "NotifyDEBUGIcon", { fg = c.grey_light })
hl(0, "NotifyDEBUGTitle", { fg = c.grey_light })
hl(0, "NotifyTRACEBorder", { fg = c.purple })
hl(0, "NotifyTRACEIcon", { fg = c.purple_bright })
hl(0, "NotifyTRACETitle", { fg = c.purple_bright })

-- Flash
hl(0, "FlashBackdrop", { fg = c.grey })
hl(0, "FlashCurrent", { fg = c.bg, bg = c.amber, bold = true })
hl(0, "FlashLabel", { fg = c.bg, bg = c.purple_bright, bold = true })
hl(0, "FlashMatch", { fg = c.bg, bg = c.yellow })
hl(0, "FlashCursor", { reverse = true })

-- Hop
hl(0, "HopNextKey", { fg = c.purple_bright, bold = true })
hl(0, "HopNextKey1", { fg = c.cyan_bright, bold = true })
hl(0, "HopNextKey2", { fg = c.blue })
hl(0, "HopUnmatched", { fg = c.grey })

-- Gitsigns
hl(0, "GitSignsAdd", { fg = c.green })
hl(0, "GitSignsChange", { fg = c.yellow })
hl(0, "GitSignsDelete", { fg = c.red })
hl(0, "GitSignsChangedelete", { fg = c.yellow })
hl(0, "GitSignsTopdelete", { fg = c.red })
hl(0, "GitSignsUntracked", { fg = c.grey })
hl(0, "GitSignsAddNr", { fg = c.green })
hl(0, "GitSignsChangeNr", { fg = c.yellow })
hl(0, "GitSignsDeleteNr", { fg = c.red })
hl(0, "GitSignsAddLn", { bg = "#1a2e1a" })
hl(0, "GitSignsChangeLn", { bg = "#2e2a1a" })
hl(0, "GitSignsDeleteLn", { bg = "#2e1a1a" })
hl(0, "GitSignsAddPreview", { fg = c.green, bg = "#1a2e1a" })
hl(0, "GitSignsDeletePreview", { fg = c.red, bg = "#2e1a1a" })

-- Diff view
hl(0, "DiffviewFilePanelTitle", { fg = c.purple_bright, bold = true })
hl(0, "DiffviewFilePanelCounter", { fg = c.purple })
hl(0, "DiffviewFilePanelFileName", { fg = c.fg })
hl(0, "DiffviewNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "DiffviewCursorLine", { bg = c.bg_ui })
hl(0, "DiffviewVertSplit", { fg = c.purple })
hl(0, "DiffviewSignColumn", { bg = c.bg_dark })
hl(0, "DiffviewStatusLine", { fg = c.fg_dim, bg = c.bg_dark })
hl(0, "DiffviewStatusLineNC", { fg = c.grey, bg = c.bg_dark })
hl(0, "DiffviewEndOfBuffer", { fg = c.bg_dark })
hl(0, "DiffviewFilePanelRootPath", { fg = c.grey })
hl(0, "DiffviewFilePanelPath", { fg = c.grey })
hl(0, "DiffviewFilePanelInsertions", { fg = c.green })
hl(0, "DiffviewFilePanelDeletions", { fg = c.red })
hl(0, "DiffviewStatusAdded", { fg = c.green })
hl(0, "DiffviewStatusUntracked", { fg = c.green })
hl(0, "DiffviewStatusModified", { fg = c.yellow })
hl(0, "DiffviewStatusRenamed", { fg = c.yellow })
hl(0, "DiffviewStatusCopied", { fg = c.yellow })
hl(0, "DiffviewStatusTypeChange", { fg = c.yellow })
hl(0, "DiffviewStatusUnmerged", { fg = c.yellow })
hl(0, "DiffviewStatusDeleted", { fg = c.red })
hl(0, "DiffviewReference", { fg = c.purple_bright })

-- Dashboard
hl(0, "DashboardHeader", { fg = c.purple_bright })
hl(0, "DashboardFooter", { fg = c.grey })
hl(0, "DashboardCenter", { fg = c.blue_bright })
hl(0, "DashboardShortCut", { fg = c.cyan })
hl(0, "DashboardKey", { fg = c.amber })
hl(0, "DashboardDesc", { fg = c.fg })
hl(0, "DashboardIcon", { fg = c.purple_bright })

-- Alpha
hl(0, "AlphaHeader", { fg = c.purple_bright })
hl(0, "AlphaButtons", { fg = c.blue_bright })
hl(0, "AlphaShortcut", { fg = c.amber })
hl(0, "AlphaFooter", { fg = c.grey })

-- Snacks
hl(0, "SnacksNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "SnacksDashboardHeader", { fg = c.purple_bright })
hl(0, "SnacksDashboardFooter", { fg = c.grey })
hl(0, "SnacksDashboardIcon", { fg = c.purple_bright })
hl(0, "SnacksDashboardKey", { fg = c.amber })
hl(0, "SnacksDashboardDesc", { fg = c.fg })
hl(0, "SnacksDashboardTitle", { fg = c.purple_bright, bold = true })
hl(0, "SnacksDashboardSpecial", { fg = c.cyan })
hl(0, "SnacksNotifierInfo", { fg = c.blue_bright })
hl(0, "SnacksNotifierWarn", { fg = c.yellow_bright })
hl(0, "SnacksNotifierError", { fg = c.red_bright })
hl(0, "SnacksNotifierDebug", { fg = c.grey_light })
hl(0, "SnacksNotifierTrace", { fg = c.purple_bright })
hl(0, "SnacksIndent", { fg = c.bg_ui })
hl(0, "SnacksIndentScope", { fg = c.purple })
hl(0, "SnacksPickerNormal", { fg = c.fg, bg = c.bg_dark })
hl(0, "SnacksPickerBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "SnacksPickerTitle", { fg = c.purple_bright, bold = true })
hl(0, "SnacksPickerMatch", { fg = c.purple_bright, bold = true })
hl(0, "SnacksPickerSelected", { fg = c.fg, bg = c.bg_ui })
hl(0, "SnacksPickerPrompt", { fg = c.purple_bright })
hl(0, "SnacksPickerPreview", { fg = c.fg, bg = c.bg_dark })

-- Render-markdown
hl(0, "RenderMarkdownH1", { fg = c.yellow_bright, bold = true })
hl(0, "RenderMarkdownH1Bg", { bg = "#2a2818" })
hl(0, "RenderMarkdownH2", { fg = c.purple_bright, bold = true })
hl(0, "RenderMarkdownH2Bg", { bg = "#281828" })
hl(0, "RenderMarkdownH3", { fg = c.blue_bright, bold = true })
hl(0, "RenderMarkdownH3Bg", { bg = "#182028" })
hl(0, "RenderMarkdownH4", { fg = c.cyan_bright, bold = true })
hl(0, "RenderMarkdownH4Bg", { bg = "#182820" })
hl(0, "RenderMarkdownH5", { fg = c.green_bright, bold = true })
hl(0, "RenderMarkdownH5Bg", { bg = "#1a281a" })
hl(0, "RenderMarkdownH6", { fg = c.pink, bold = true })
hl(0, "RenderMarkdownH6Bg", { bg = "#281820" })
hl(0, "RenderMarkdownCode", { bg = c.bg_dark })
hl(0, "RenderMarkdownCodeInline", { bg = c.bg_dark })
hl(0, "RenderMarkdownBullet", { fg = c.cyan })
hl(0, "RenderMarkdownQuote", { fg = c.grey_light })
hl(0, "RenderMarkdownDash", { fg = c.purple })
hl(0, "RenderMarkdownLink", { fg = c.blue_bright, underline = true })
hl(0, "RenderMarkdownTableHead", { fg = c.purple_bright, bold = true })
hl(0, "RenderMarkdownTableRow", { fg = c.fg })
hl(0, "RenderMarkdownTableFill", { fg = c.bg_ui })
hl(0, "RenderMarkdownChecked", { fg = c.green_bright })
hl(0, "RenderMarkdownUnchecked", { fg = c.grey })

-- Health check
hl(0, "healthSuccess", { fg = c.green_bright })
hl(0, "healthWarning", { fg = c.yellow_bright })
hl(0, "healthError", { fg = c.red_bright })

-- Terminal colors
vim.g.terminal_color_0 = c.bg_dark
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.fg_dim
vim.g.terminal_color_8 = c.grey
vim.g.terminal_color_9 = c.red_bright
vim.g.terminal_color_10 = c.green_bright
vim.g.terminal_color_11 = c.yellow_bright
vim.g.terminal_color_12 = c.blue_bright
vim.g.terminal_color_13 = c.purple_bright
vim.g.terminal_color_14 = c.cyan_bright
vim.g.terminal_color_15 = c.fg
