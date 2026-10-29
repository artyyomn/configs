-- solace.vague.nvim
-- A cooler, quieter variation of solace with more of vague.nvim's
-- subdued, atmospheric feel. Warmth remains in the foreground and accents,
-- but the palette is less earthy and less retro.
--
-- Install as ~/.config/nvim/colors/solace_vague.lua
-- Enable with: vim.cmd.colorscheme("solace_vague")

vim.g.colors_name = "solace_vague"
vim.o.termguicolors = true

local p = {
  bg        = "#141416",
  bg1       = "#1B1B1F",
  bg2       = "#222226",
  bg3       = "#2B2B30",
  selection = "#343139",
  border    = "#414047",

  fg        = "#D1CBC3",
  fg_soft   = "#AAA49D",
  muted     = "#77747A",
  subtle    = "#55535A",

  red       = "#D98282",
  orange    = "#D7A078",
  yellow    = "#D8BC8A",
  green     = "#A5B99A",
  aqua      = "#8CB8B5",
  blue      = "#91AFC9",
  purple    = "#B5A0C9",
  pink      = "#C99AA8",

  diff_add  = "#202923",
  diff_del  = "#2C2024",
  diff_chg  = "#2C2822",
}

local function hi(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end
local function link(group, target)
  hi(group, { link = target })
end

-- Editor
hi("Normal",          { fg = p.fg, bg = p.bg })
hi("NormalNC",        { fg = p.fg_soft, bg = p.bg })
hi("NormalFloat",     { fg = p.fg, bg = p.bg1 })
hi("FloatBorder",     { fg = p.border, bg = p.bg1 })
hi("FloatTitle",      { fg = p.yellow, bg = p.bg1, bold = true })
hi("SignColumn",      { fg = p.muted, bg = p.bg })
hi("EndOfBuffer",     { fg = p.bg })
hi("LineNr",          { fg = p.subtle })
hi("CursorLine",      { bg = p.bg1 })
hi("CursorLineNr",    { fg = p.fg_soft })
hi("CursorColumn",    { bg = p.bg1 })
hi("ColorColumn",     { bg = p.bg1 })
hi("Cursor",          { fg = p.bg, bg = p.fg })
hi("TermCursor",      { fg = p.bg, bg = p.fg })
hi("Visual",          { bg = p.selection })
hi("VisualNOS",       { bg = p.selection })
hi("Search",          { fg = p.bg, bg = p.yellow })
hi("IncSearch",       { fg = p.bg, bg = p.orange, bold = true })
hi("CurSearch",       { fg = p.bg, bg = p.orange, bold = true })
hi("MatchParen",      { fg = p.yellow, bg = p.bg3, bold = true })
hi("Whitespace",      { fg = p.bg3 })
hi("NonText",         { fg = p.bg3 })
hi("SpecialKey",      { fg = p.subtle })
hi("WinSeparator",    { fg = p.border })
hi("VertSplit",       { fg = p.border })
hi("Folded",          { fg = p.muted, bg = p.bg1, italic = true })
hi("FoldColumn",      { fg = p.subtle, bg = p.bg })
hi("Directory",       { fg = p.aqua })
hi("Title",           { fg = p.fg, bold = true })
hi("ErrorMsg",        { fg = p.red })
hi("WarningMsg",      { fg = p.orange })
hi("MoreMsg",         { fg = p.green })
hi("Question",        { fg = p.aqua })
hi("ModeMsg",         { fg = p.fg_soft, bold = true })
hi("MsgArea",         { fg = p.fg_soft })
hi("Pmenu",           { fg = p.fg, bg = p.bg2 })
hi("PmenuSel",        { fg = p.fg, bg = p.selection, bold = true })
hi("PmenuSbar",       { bg = p.bg3 })
hi("PmenuThumb",      { bg = p.muted })
hi("WildMenu",        { fg = p.bg, bg = p.yellow })
hi("StatusLine",      { fg = p.fg, bg = p.bg2 })
hi("StatusLineNC",    { fg = p.muted, bg = p.bg1 })
hi("TabLine",         { fg = p.fg_soft, bg = p.bg1 })
hi("TabLineFill",     { bg = p.bg1 })
hi("TabLineSel",      { fg = p.fg, bg = p.bg, bold = true })
hi("QuickFixLine",    { bg = p.selection })
hi("SpellBad",        { undercurl = true, sp = p.red })
hi("SpellCap",        { undercurl = true, sp = p.yellow })
hi("SpellLocal",      { undercurl = true, sp = p.aqua })
hi("SpellRare",       { undercurl = true, sp = p.purple })

-- Syntax: quiet neutrals with selective pastel accents
hi("Comment",         { fg = p.muted, italic = true })
hi("Constant",        { fg = p.orange })
hi("String",          { fg = p.green })
hi("Character",       { fg = p.green })
hi("Number",          { fg = p.orange })
hi("Boolean",         { fg = p.orange })
hi("Float",           { fg = p.orange })
hi("Identifier",      { fg = p.fg })
hi("Function",        { fg = p.yellow })
hi("Statement",       { fg = p.purple })
hi("Conditional",     { fg = p.purple })
hi("Repeat",          { fg = p.purple })
hi("Label",           { fg = p.aqua })
hi("Operator",        { fg = p.fg_soft })
hi("Keyword",         { fg = p.pink })
hi("Exception",       { fg = p.pink })
hi("PreProc",         { fg = p.aqua })
hi("Include",         { fg = p.aqua })
hi("Define",          { fg = p.purple })
hi("Macro",           { fg = p.aqua })
hi("PreCondit",       { fg = p.aqua })
hi("Type",            { fg = p.blue })
hi("StorageClass",    { fg = p.pink })
hi("Structure",       { fg = p.blue })
hi("Typedef",         { fg = p.blue })
hi("Special",         { fg = p.aqua })
hi("SpecialChar",     { fg = p.orange })
hi("Tag",             { fg = p.pink })
hi("Delimiter",       { fg = p.fg_soft })
hi("SpecialComment",  { fg = p.muted, italic = true })
hi("Debug",           { fg = p.red })
hi("Underlined",      { fg = p.aqua, underline = true })
hi("Error",           { fg = p.red, undercurl = true, sp = p.red })
hi("Todo",            { fg = p.bg, bg = p.yellow, bold = true })

-- Tree-sitter
link("@comment", "Comment")
link("@string", "String")
link("@character", "Character")
link("@number", "Number")
link("@boolean", "Boolean")
link("@constant", "Constant")
hi("@constant.builtin", { fg = p.orange, italic = true })
hi("@variable", { fg = p.fg })
hi("@variable.builtin", { fg = p.aqua, italic = true })
hi("@variable.parameter", { fg = p.fg_soft, italic = true })
hi("@variable.member", { fg = p.fg })
link("@function", "Function")
hi("@function.call", { fg = p.yellow })
hi("@function.builtin", { fg = p.aqua })
hi("@function.method", { fg = p.yellow })
hi("@constructor", { fg = p.blue })
link("@method", "Function")
link("@keyword", "Keyword")
hi("@keyword.function", { fg = p.pink })
hi("@keyword.return", { fg = p.pink, italic = true })
hi("@keyword.operator", { fg = p.purple })
link("@operator", "Operator")
link("@type", "Type")
hi("@type.builtin", { fg = p.aqua })
hi("@type.definition", { fg = p.blue, bold = true })
hi("@attribute", { fg = p.aqua })
hi("@property", { fg = p.fg_soft })
hi("@field", { fg = p.fg_soft })
hi("@module", { fg = p.blue })
hi("@namespace", { fg = p.blue })
hi("@punctuation.delimiter", { fg = p.fg_soft })
hi("@punctuation.bracket", { fg = p.fg_soft })
hi("@punctuation.special", { fg = p.orange })
hi("@tag", { fg = p.pink })
hi("@tag.attribute", { fg = p.orange })
hi("@tag.delimiter", { fg = p.fg_soft })
hi("@markup.heading", { fg = p.fg, bold = true })
hi("@markup.strong", { fg = p.fg, bold = true })
hi("@markup.italic", { fg = p.fg, italic = true })
hi("@markup.link", { fg = p.aqua, underline = true })
hi("@markup.raw", { fg = p.green })
hi("@markup.list", { fg = p.orange })
hi("@diff.plus", { fg = p.green })
hi("@diff.minus", { fg = p.red })
hi("@diff.delta", { fg = p.yellow })

-- LSP and diagnostics: subtle virtual backgrounds, clear undercurls
hi("DiagnosticError",            { fg = p.red })
hi("DiagnosticWarn",             { fg = p.orange })
hi("DiagnosticInfo",             { fg = p.aqua })
hi("DiagnosticHint",             { fg = p.blue })
hi("DiagnosticOk",               { fg = p.green })
hi("DiagnosticVirtualTextError", { fg = p.red, bg = p.bg1 })
hi("DiagnosticVirtualTextWarn",  { fg = p.orange, bg = p.bg1 })
hi("DiagnosticVirtualTextInfo",  { fg = p.aqua, bg = p.bg1 })
hi("DiagnosticVirtualTextHint",  { fg = p.blue, bg = p.bg1 })
hi("DiagnosticUnderlineError",   { undercurl = true, sp = p.red })
hi("DiagnosticUnderlineWarn",    { undercurl = true, sp = p.orange })
hi("DiagnosticUnderlineInfo",    { undercurl = true, sp = p.aqua })
hi("DiagnosticUnderlineHint",    { undercurl = true, sp = p.blue })
hi("LspReferenceText",           { bg = p.bg3 })
hi("LspReferenceRead",           { bg = p.bg3 })
hi("LspReferenceWrite",          { bg = p.bg3, underline = true })
hi("LspCodeLens",                { fg = p.muted, italic = true })
hi("LspInlayHint",               { fg = p.muted, bg = p.bg1, italic = true })
hi("LspSignatureActiveParameter",{ fg = p.yellow, bold = true })

-- Diff and Git
hi("DiffAdd",      { fg = p.green, bg = p.diff_add })
hi("DiffChange",   { fg = p.yellow, bg = p.diff_chg })
hi("DiffDelete",   { fg = p.red, bg = p.diff_del })
hi("DiffText",     { fg = p.fg, bg = p.selection, bold = true })
hi("GitSignsAdd",    { fg = p.green })
hi("GitSignsChange", { fg = p.yellow })
hi("GitSignsDelete", { fg = p.red })

-- Common plugin integrations
hi("TelescopeNormal",        { fg = p.fg, bg = p.bg1 })
hi("TelescopeBorder",        { fg = p.border, bg = p.bg1 })
hi("TelescopePromptNormal",  { fg = p.fg, bg = p.bg2 })
hi("TelescopePromptBorder",  { fg = p.border, bg = p.bg2 })
hi("TelescopeSelection",     { bg = p.selection, bold = true })
hi("TelescopeMatching",      { fg = p.yellow, bold = true })
hi("TelescopePromptPrefix",  { fg = p.orange })
hi("CmpItemAbbrMatch",       { fg = p.yellow, bold = true })
hi("CmpItemAbbrMatchFuzzy",  { fg = p.orange, bold = true })
hi("CmpItemKindFunction",    { fg = p.yellow })
hi("CmpItemKindMethod",      { fg = p.yellow })
hi("CmpItemKindVariable",    { fg = p.fg })
hi("CmpItemKindKeyword",     { fg = p.pink })
hi("CmpItemKindClass",       { fg = p.blue })
hi("CmpItemKindInterface",   { fg = p.blue })
hi("CmpItemKindSnippet",     { fg = p.green })
hi("CmpItemKindText",        { fg = p.fg_soft })
hi("WhichKey",               { fg = p.yellow })
hi("WhichKeyGroup",          { fg = p.aqua })
hi("WhichKeyDesc",           { fg = p.fg })
hi("NvimTreeNormal",         { fg = p.fg, bg = p.bg })
hi("NvimTreeFolderName",     { fg = p.blue })
hi("NvimTreeOpenedFolderName",{ fg = p.yellow, bold = true })
hi("NvimTreeRootFolder",     { fg = p.orange, bold = true })
hi("NeoTreeNormal",          { fg = p.fg, bg = p.bg })
hi("NeoTreeDirectoryName",   { fg = p.blue })
hi("NotifyERRORBorder",      { fg = p.red })
hi("NotifyWARNBorder",       { fg = p.orange })
hi("NotifyINFOBorder",       { fg = p.aqua })
hi("NotifyDEBUGBorder",      { fg = p.muted })
hi("NotifyTRACEBorder",      { fg = p.purple })

-- Terminal palette
vim.g.terminal_color_0  = p.bg
vim.g.terminal_color_1  = p.red
vim.g.terminal_color_2  = p.green
vim.g.terminal_color_3  = p.yellow
vim.g.terminal_color_4  = p.blue
vim.g.terminal_color_5  = p.purple
vim.g.terminal_color_6  = p.aqua
vim.g.terminal_color_7  = p.fg
vim.g.terminal_color_8  = p.subtle
vim.g.terminal_color_9  = "#E59494"
vim.g.terminal_color_10 = "#B3C9A7"
vim.g.terminal_color_11 = "#E5C99A"
vim.g.terminal_color_12 = "#A0BCD5"
vim.g.terminal_color_13 = "#C4ADD7"
vim.g.terminal_color_14 = "#9CC7C3"
vim.g.terminal_color_15 = "#E7E0D7"
