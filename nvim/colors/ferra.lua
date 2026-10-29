local colors = {
  ferra_night = "#2b292d",
  ferra_ash   = "#383539",
  ferra_umber = "#4d424b",
  ferra_bark  = "#6F5D63",
  ferra_mist  = "#D1D1E0",
  ferra_sage  = "#B1B695",
  ferra_blush = "#fecdb2",
  ferra_coral = "#ffa07a",
  ferra_rose  = "#F6B6C9",
  ferra_ember = "#e06b75",
  ferra_honey = "#F5D76E",
}

local hl = vim.api.nvim_set_hl

vim.cmd("highlight clear")
vim.o.termguicolors = true
vim.g.colors_name = "ferra"

-- Editor UI
hl(0, "Normal",       { fg = colors.ferra_blush, bg = colors.ferra_night })
hl(0, "NormalFloat",  { fg = colors.ferra_blush, bg = colors.ferra_ash })
hl(0, "FloatBorder",  { fg = colors.ferra_bark,  bg = colors.ferra_ash })

hl(0, "Cursor",       { fg = colors.ferra_night, bg = colors.ferra_blush })
hl(0, "CursorLine",   { bg = colors.ferra_ash })
hl(0, "CursorLineNr", { fg = colors.ferra_blush, bold = true })

hl(0, "LineNr",       { fg = colors.ferra_bark })
hl(0, "ColorColumn",  { bg = colors.ferra_ash })
hl(0, "Visual",       { bg = colors.ferra_umber })
hl(0, "StatusLine",   { fg = colors.ferra_blush, bg = colors.ferra_ash })
hl(0, "StatusLineNC", { fg = colors.ferra_bark, bg = colors.ferra_ash })
hl(0, "WinSeparator", { fg = colors.ferra_bark })
hl(0, "Pmenu",        { fg = colors.ferra_blush, bg = colors.ferra_ash })
hl(0, "PmenuSel",     { fg = colors.ferra_coral, bg = colors.ferra_ash })
hl(0, "MatchParen",   { fg = colors.ferra_night, bg = colors.ferra_bark })

hl(0, "Whitespace",   { fg = colors.ferra_bark })
hl(0, "NonText",      { fg = colors.ferra_bark })
hl(0, "SpecialKey",   { fg = colors.ferra_bark })

-- Syntax
hl(0, "Comment",      { fg = colors.ferra_bark, italic = true })

hl(0, "Constant",     { fg = colors.ferra_sage })
hl(0, "String",       { fg = colors.ferra_sage })
hl(0, "Character",    { fg = colors.ferra_sage })
hl(0, "Number",       { fg = colors.ferra_sage })
hl(0, "Boolean",      { fg = colors.ferra_sage })
hl(0, "Float",        { fg = colors.ferra_sage })

hl(0, "Function",     { fg = colors.ferra_coral })
hl(0, "Macro",        { fg = colors.ferra_mist })

hl(0, "Keyword",      { fg = colors.ferra_mist })
hl(0, "Conditional",  { fg = colors.ferra_mist })
hl(0, "Repeat",       { fg = colors.ferra_mist })
hl(0, "Operator",     { fg = colors.ferra_mist })

hl(0, "Delimiter",    { fg = colors.ferra_blush })
hl(0, "Special",      { fg = colors.ferra_blush })

hl(0, "Type",         { fg = colors.ferra_rose })
hl(0, "StorageClass", { fg = colors.ferra_rose })
hl(0, "Structure",    { fg = colors.ferra_rose })
hl(0, "Typedef",      { fg = colors.ferra_rose })

hl(0, "Identifier",   { fg = colors.ferra_blush })

hl(0, "Tag",          { fg = colors.ferra_sage })
hl(0, "@tag",         { fg = colors.ferra_sage })
hl(0, "@tag.attribute",{ fg = colors.ferra_blush })

-- Treesitter
hl(0, "@comment",             { link = "Comment" })
hl(0, "@constant",            { link = "Constant" })
hl(0, "@string",              { link = "String" })
hl(0, "@number",              { link = "Number" })
hl(0, "@boolean",             { link = "Boolean" })

hl(0, "@function",            { fg = colors.ferra_coral })
hl(0, "@function.call",       { fg = colors.ferra_coral })
hl(0, "@function.macro",      { fg = colors.ferra_mist })

hl(0, "@keyword",             { fg = colors.ferra_mist })
hl(0, "@operator",            { fg = colors.ferra_mist })
hl(0, "@punctuation",         { fg = colors.ferra_blush })
hl(0, "@punctuation.delimiter",{ fg = colors.ferra_blush })
hl(0, "@punctuation.bracket", { fg = colors.ferra_blush })

hl(0, "@type",                { fg = colors.ferra_rose })
hl(0, "@variable",            { fg = colors.ferra_blush })
hl(0, "@variable.builtin",    { fg = colors.ferra_rose })
hl(0, "@module",              { fg = colors.ferra_blush })
hl(0, "@namespace",           { fg = colors.ferra_blush })
hl(0, "@label",               { fg = colors.ferra_sage })
hl(0, "@attribute",           { fg = colors.ferra_blush })

-- Markdown
hl(0, "@markup.heading",      { fg = colors.ferra_sage, bold = true })
hl(0, "@markup.list",         { fg = colors.ferra_mist })
hl(0, "@markup.bold",         { bold = true })
hl(0, "@markup.italic",       { italic = true })
hl(0, "@markup.strike",       { strikethrough = true })
hl(0, "@markup.link",         { fg = colors.ferra_rose })
hl(0, "@markup.link.url",     { fg = colors.ferra_rose, underline = true })
hl(0, "@markup.quote",        { fg = colors.ferra_bark })
hl(0, "@markup.raw",          { fg = colors.ferra_coral })

-- Diff
hl(0, "DiffAdd",    { fg = colors.ferra_sage })
hl(0, "DiffChange", { fg = colors.ferra_blush })
hl(0, "DiffDelete", { fg = colors.ferra_ember })

-- Diagnostics
hl(0, "DiagnosticError", { fg = colors.ferra_ember })
hl(0, "DiagnosticWarn",  { fg = colors.ferra_honey })
hl(0, "DiagnosticInfo",  { fg = colors.ferra_blush })
hl(0, "DiagnosticHint",  { fg = colors.ferra_blush })

hl(0, "DiagnosticUnderlineError", {
  undercurl = true,
  sp = colors.ferra_ember,
})

hl(0, "DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = colors.ferra_honey,
})

hl(0, "DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = colors.ferra_blush,
})

hl(0, "DiagnosticUnderlineHint", {
  undercurl = true,
  sp = colors.ferra_blush,
})

hl(0, "DiagnosticUnnecessary", { nocombine = true })
hl(0, "DiagnosticDeprecated",  { strikethrough = true })
