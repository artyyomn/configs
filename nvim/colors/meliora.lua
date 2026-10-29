-- lua/colors/mytheme.lua

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "mytheme"

local p = {
    red = "#d29595",
    orange = "#cbab8a",
    yellow = "#c9b58e",
    blue = "#a49db9",
    magenta = "#b494af",

    comment = "#707035",

    light_black = "#252220",
    light_black2 = "#292725",
    light_black3 = "#302D2B",
    black = "#1c1917",
    dark_black = "#191514",
    dark_light_black = "#211d1c",

    white = "#dad7d5",
    dark_white = "#aaa7a6",
    dark_white2 = "#949290",
    light_grey = "#6a6867",
    grey = "#605e5d",
    dark_grey = "#4c4b49",
    dark_grey2 = "#383735",
    secondary_white = "#c2b4a8",
}

local hl = vim.api.nvim_set_hl

--------------------------------------------------
-- UI
--------------------------------------------------

hl(0, "Normal",       { fg = p.light_grey, bg = p.black })
hl(0, "NormalFloat",  { fg = p.dark_white, bg = p.light_black })
hl(0, "FloatBorder",  { fg = p.light_black3, bg = p.light_black })

hl(0, "Cursor",       { fg = p.black, bg = p.light_grey })
hl(0, "CursorLine",   { bg = p.light_black })
hl(0, "CursorColumn", { bg = p.light_black })
hl(0, "ColorColumn",  { bg = p.light_black2 })

hl(0, "CursorLineNr", { fg = p.dark_white, bg = p.dark_light_black })
hl(0, "LineNr",       { fg = p.grey, bg = p.dark_black })
hl(0, "SignColumn",   { bg = p.dark_black })
hl(0, "FoldColumn",   { bg = p.dark_black })

hl(0, "VertSplit",    { fg = p.dark_grey })
hl(0, "WinSeparator", { fg = p.dark_grey })

hl(0, "StatusLine",   { fg = p.dark_white, bg = p.light_black3 })
hl(0, "StatusLineNC", { fg = p.dark_white2, bg = p.light_black })

hl(0, "Pmenu",        { fg = p.dark_white, bg = p.light_black })
hl(0, "PmenuSel",     { fg = p.black, bg = p.orange })

hl(0, "Visual",       { bg = p.light_black3 })
hl(0, "Search",       { bg = p.light_black3, bold = true })
hl(0, "IncSearch",    { fg = p.black, bg = p.orange })

hl(0, "Whitespace",   { fg = p.grey })
hl(0, "NonText",      { fg = p.dark_grey2 })

--------------------------------------------------
-- Syntax
--------------------------------------------------

hl(0, "Comment",      { fg = p.comment })

hl(0, "Constant",     { fg = p.magenta })
hl(0, "String",       { fg = p.yellow })
hl(0, "Character",    { fg = p.yellow })
hl(0, "Number",       { fg = p.magenta })
hl(0, "Boolean",      { fg = p.magenta })
hl(0, "Float",        { fg = p.magenta })

hl(0, "Identifier",   { fg = p.white })
hl(0, "Function",     { fg = p.blue })

hl(0, "Statement",    { fg = p.orange })
hl(0, "Conditional",  { fg = p.red })
hl(0, "Repeat",       { fg = p.red })
hl(0, "Label",        { fg = p.orange })
hl(0, "Operator",     { fg = p.secondary_white })
hl(0, "Keyword",      { fg = p.orange })
hl(0, "Exception",    { fg = p.red })

hl(0, "PreProc",      { fg = p.orange })
hl(0, "Include",      { fg = p.orange })

hl(0, "Type",         { fg = p.secondary_white })
hl(0, "StorageClass", { fg = p.secondary_white })
hl(0, "Structure",    { fg = p.secondary_white })
hl(0, "Typedef",      { fg = p.secondary_white })

hl(0, "Special",      { fg = p.yellow })
hl(0, "Delimiter",    { fg = p.secondary_white })
hl(0, "SpecialChar",  { fg = p.yellow })
hl(0, "Tag",          { fg = p.red })

--------------------------------------------------
-- Treesitter
--------------------------------------------------

hl(0, "@comment",              { link = "Comment" })
hl(0, "@constant",             { link = "Constant" })
hl(0, "@string",               { link = "String" })
hl(0, "@string.regex",         { fg = p.orange })

hl(0, "@function",             { fg = p.blue })
hl(0, "@function.call",        { fg = p.blue })
hl(0, "@function.method",      { fg = p.blue })

hl(0, "@variable",             { fg = p.white })
hl(0, "@namespace",            { fg = p.blue })
hl(0, "@type",                 { fg = p.secondary_white })

hl(0, "@keyword",              { fg = p.orange })
hl(0, "@keyword.function",     { fg = p.red })
hl(0, "@keyword.import",       { fg = p.orange })
hl(0, "@keyword.return",       { fg = p.red })

hl(0, "@operator",             { fg = p.secondary_white })
hl(0, "@punctuation",          { fg = p.secondary_white })
hl(0, "@tag",                  { fg = p.red })

--------------------------------------------------
-- Diagnostics
--------------------------------------------------

hl(0, "DiagnosticError", { fg = p.red })
hl(0, "DiagnosticWarn",  { fg = p.orange })
hl(0, "DiagnosticInfo",  { fg = p.blue })
hl(0, "DiagnosticHint",  { fg = p.magenta })

hl(0, "DiagnosticUnderlineError", {
    undercurl = true,
    sp = p.red,
})

hl(0, "DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = p.orange,
})

hl(0, "DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = p.blue,
})

hl(0, "DiagnosticUnderlineHint", {
    undercurl = true,
    sp = p.magenta,
})

--------------------------------------------------
-- Diff
--------------------------------------------------

hl(0, "DiffAdd",    { fg = p.blue })
hl(0, "DiffChange", { fg = p.magenta })
hl(0, "DiffDelete", { fg = p.red })

--------------------------------------------------
-- Markdown
--------------------------------------------------

hl(0, "@markup.heading", { fg = p.orange })
hl(0, "@markup.list",    { fg = p.blue })
hl(0, "@markup.strong",  { fg = p.magenta, bold = true })
hl(0, "@markup.italic",  { fg = p.blue, italic = true })
hl(0, "@markup.quote",   { fg = p.yellow })
hl(0, "@markup.raw",     { fg = p.blue })
hl(0, "@markup.link",    { fg = p.comment, underline = true })
