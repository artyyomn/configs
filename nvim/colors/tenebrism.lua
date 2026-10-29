-- tenebrism.nvim
-- Tenebrist chiaroscuro: soot-black shadows, aged canvas,
-- bone highlights, and restrained umber.

if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.cmd("syntax reset")
vim.o.termguicolors = true
vim.g.colors_name = "tenebrism"

local p = {
  bg        = "#171615",
  bg_alt    = "#201e1b",
  bg_float  = "#24211e",
  bg_select = "#34302a",
  bg_line   = "#211f1c",
  bg_popup  = "#1d1b19",

  fg        = "#c5bca9",
  fg_soft   = "#a49a87",
  fg_dim    = "#746d61",
  bone      = "#e0d5bd",

  black     = "#111110",
  stone     = "#8d8577",
  ash       = "#625d54",
  umber     = "#80634a",
  ochre     = "#b18a59",
  rust      = "#a5664d",
  wine      = "#875c55",
  moss      = "#777b5b",
  sage      = "#a0a083",
  bronze    = "#9a7950",
  bluegrey  = "#78858a",
  pale_blue = "#a1afb0",

  red       = "#b16e61",
  orange    = "#bb875b",
  yellow    = "#c1a16b",
  green     = "#929577",
  cyan      = "#8fa4a0",
  blue      = "#82939a",
  purple    = "#a08b9a",
  magenta   = "#aa858b",

  none      = "NONE",
}

local set_hl = vim.api.nvim_set_hl

local groups = {
  Normal         = { fg = p.fg, bg = p.bg },
  NormalNC       = { fg = p.fg_soft, bg = p.bg },
  NormalFloat    = { fg = p.fg, bg = p.bg_float },
  FloatBorder    = { fg = p.umber, bg = p.bg_float },
  FloatTitle     = { fg = p.bone, bg = p.bg_float, bold = true },

  Cursor         = { fg = p.bg, bg = p.bone },
  CursorIM       = { fg = p.bg, bg = p.ochre },
  CursorLine     = { bg = p.bg_line },
  CursorColumn   = { bg = p.bg_line },
  ColorColumn    = { bg = p.bg_alt },

  LineNr         = { fg = p.fg_dim },
  CursorLineNr   = { fg = p.ochre, bold = true },
  SignColumn     = { fg = p.fg_dim, bg = p.bg },
  FoldColumn     = { fg = p.ash, bg = p.bg },
  Folded         = { fg = p.fg_soft, bg = p.bg_alt, italic = true },

  VertSplit      = { fg = p.bg_select },
  WinSeparator   = { fg = p.bg_select },
  StatusLine     = { fg = p.fg, bg = p.bg_alt },
  StatusLineNC   = { fg = p.fg_dim, bg = p.bg_alt },
  TabLine        = { fg = p.fg_soft, bg = p.bg_alt },
  TabLineFill    = { bg = p.bg },
  TabLineSel     = { fg = p.bone, bg = p.bg_select, bold = true },

  Pmenu          = { fg = p.fg, bg = p.bg_popup },
  PmenuSel       = { fg = p.bone, bg = p.bg_select, bold = true },
  PmenuSbar      = { bg = p.bg_alt },
  PmenuThumb     = { bg = p.umber },

  Visual         = { bg = p.bg_select },
  VisualNOS      = { bg = p.bg_select },
  Search         = { fg = p.bg, bg = p.yellow },
  IncSearch      = { fg = p.bg, bg = p.ochre, bold = true },
  CurSearch      = { fg = p.bg, bg = p.bone, bold = true },
  Substitute     = { fg = p.bg, bg = p.rust },
  MatchParen     = { fg = p.bone, bg = p.bg_select, bold = true },

  NonText        = { fg = p.ash },
  SpecialKey     = { fg = p.ash },
  Whitespace     = { fg = p.bg_select },
  EndOfBuffer    = { fg = p.bg_alt },
  Directory      = { fg = p.bluegrey },
  Title          = { fg = p.bone, bold = true },
  Question       = { fg = p.sage },
  MoreMsg        = { fg = p.sage },
  ModeMsg        = { fg = p.ochre },
  WarningMsg     = { fg = p.orange },
  ErrorMsg       = { fg = p.red, bold = true },
  WildMenu       = { fg = p.bg, bg = p.ochre },
  Conceal        = { fg = p.fg_dim },
  QuickFixLine   = { bg = p.bg_select, bold = true },

  SpellBad       = { sp = p.red, undercurl = true },
  SpellCap       = { sp = p.ochre, undercurl = true },
  SpellLocal     = { sp = p.bluegrey, undercurl = true },
  SpellRare      = { sp = p.purple, undercurl = true },

  Comment        = { fg = p.fg_dim, italic = true },
  Constant       = { fg = p.ochre },
  String         = { fg = p.sage },
  Character      = { fg = p.sage },
  Number         = { fg = p.bronze },
  Boolean        = { fg = p.bronze, bold = true },
  Float          = { fg = p.bronze },
  Identifier     = { fg = p.fg },
  Function       = { fg = p.bone },
  Statement      = { fg = p.rust },
  Conditional    = { fg = p.rust },
  Repeat         = { fg = p.rust },
  Label          = { fg = p.orange },
  Operator       = { fg = p.stone },
  Keyword        = { fg = p.rust },
  Exception      = { fg = p.wine },
  PreProc        = { fg = p.umber },
  Include        = { fg = p.ochre },
  Define         = { fg = p.ochre },
  Macro          = { fg = p.ochre },
  PreCondit      = { fg = p.umber },
  Type           = { fg = p.sage },
  StorageClass   = { fg = p.rust },
  Structure      = { fg = p.sage },
  Typedef        = { fg = p.sage },
  Special        = { fg = p.orange },
  SpecialChar    = { fg = p.orange },
  Tag            = { fg = p.rust },
  Delimiter      = { fg = p.stone },
  SpecialComment = { fg = p.umber, italic = true },
  Debug          = { fg = p.red },
  Underlined     = { underline = true },
  Ignore         = { fg = p.fg_dim },
  Error          = { fg = p.red, bold = true },
  Todo           = { fg = p.bg, bg = p.ochre, bold = true },

  DiagnosticError = { fg = p.red },
  DiagnosticWarn  = { fg = p.orange },
  DiagnosticInfo  = { fg = p.bluegrey },
  DiagnosticHint  = { fg = p.sage },
  DiagnosticOk    = { fg = p.sage },

  DiagnosticVirtualTextError = { fg = p.red, bg = p.bg_alt },
  DiagnosticVirtualTextWarn  = { fg = p.orange, bg = p.bg_alt },
  DiagnosticVirtualTextInfo  = { fg = p.bluegrey, bg = p.bg_alt },
  DiagnosticVirtualTextHint  = { fg = p.sage, bg = p.bg_alt },

  DiagnosticUnderlineError = { sp = p.red, undercurl = true },
  DiagnosticUnderlineWarn  = { sp = p.orange, undercurl = true },
  DiagnosticUnderlineInfo  = { sp = p.bluegrey, undercurl = true },
  DiagnosticUnderlineHint  = { sp = p.sage, undercurl = true },

  LspReferenceText  = { bg = p.bg_select },
  LspReferenceRead  = { bg = p.bg_select },
  LspReferenceWrite = { bg = p.bg_select, underline = true },
  LspInlayHint      = { fg = p.fg_dim, italic = true },
  LspCodeLens       = { fg = p.fg_dim, italic = true },

  GitSignsAdd    = { fg = p.sage },
  GitSignsChange = { fg = p.ochre },
  GitSignsDelete = { fg = p.rust },

  DiffAdd        = { fg = p.sage, bg = "#25271f" },
  DiffChange     = { fg = p.ochre, bg = "#29251f" },
  DiffDelete     = { fg = p.rust, bg = "#2b211f" },
  DiffText       = { fg = p.bone, bg = "#403126", bold = true },

  -- Treesitter
  ["@variable"]              = { fg = p.fg },
  ["@variable.builtin"]      = { fg = p.ochre, italic = true },
  ["@constant"]              = { fg = p.bronze },
  ["@constant.builtin"]      = { fg = p.orange },
  ["@module"]                = { fg = p.fg_soft },
  ["@string"]                = { fg = p.sage },
  ["@string.escape"]         = { fg = p.orange },
  ["@character"]             = { fg = p.sage },
  ["@number"]                = { fg = p.bronze },
  ["@boolean"]               = { fg = p.bronze, bold = true },
  ["@function"]              = { fg = p.bone },
  ["@function.call"]         = { fg = p.bone },
  ["@function.builtin"]      = { fg = p.yellow },
  ["@method"]                = { fg = p.bone },
  ["@method.call"]           = { fg = p.bone },
  ["@constructor"]           = { fg = p.sage },
  ["@keyword"]               = { fg = p.rust },
  ["@keyword.function"]      = { fg = p.rust },
  ["@keyword.return"]        = { fg = p.wine },
  ["@keyword.operator"]      = { fg = p.stone },
  ["@operator"]              = { fg = p.stone },
  ["@type"]                  = { fg = p.sage },
  ["@type.builtin"]          = { fg = p.sage, italic = true },
  ["@attribute"]             = { fg = p.umber },
  ["@property"]              = { fg = p.fg_soft },
  ["@field"]                 = { fg = p.fg_soft },
  ["@parameter"]             = { fg = p.fg_soft, italic = true },
  ["@punctuation"]           = { fg = p.stone },
  ["@punctuation.bracket"]   = { fg = p.stone },
  ["@punctuation.delimiter"] = { fg = p.ash },
  ["@tag"]                   = { fg = p.rust },
  ["@tag.attribute"]         = { fg = p.ochre },
  ["@tag.delimiter"]         = { fg = p.stone },
  ["@comment"]               = { fg = p.fg_dim, italic = true },
  ["@markup.heading"]        = { fg = p.bone, bold = true },
  ["@markup.strong"]         = { fg = p.bone, bold = true },
  ["@markup.italic"]         = { fg = p.fg_soft, italic = true },
  ["@markup.link"]           = { fg = p.bluegrey, underline = true },
  ["@markup.raw"]            = { fg = p.sage },
  ["@markup.quote"]          = { fg = p.fg_soft, italic = true },
  ["@diff.plus"]             = { fg = p.sage },
  ["@diff.minus"]            = { fg = p.rust },
  ["@diff.delta"]            = { fg = p.ochre },

  -- Popular plugins
  TelescopeNormal       = { fg = p.fg, bg = p.bg_float },
  TelescopeBorder       = { fg = p.umber, bg = p.bg_float },
  TelescopePromptNormal = { fg = p.bone, bg = p.bg_alt },
  TelescopePromptBorder = { fg = p.ochre, bg = p.bg_alt },
  TelescopeSelection    = { fg = p.bone, bg = p.bg_select, bold = true },
  TelescopeMatching     = { fg = p.orange, bold = true },

  WhichKey              = { fg = p.ochre },
  WhichKeyGroup         = { fg = p.sage },
  WhichKeyDesc          = { fg = p.fg },
  WhichKeySeparator     = { fg = p.ash },

  NeoTreeNormal         = { fg = p.fg, bg = p.bg },
  NeoTreeNormalNC       = { fg = p.fg_soft, bg = p.bg },
  NeoTreeDirectoryIcon  = { fg = p.ochre },
  NeoTreeGitAdded       = { fg = p.sage },
  NeoTreeGitModified    = { fg = p.ochre },
  NeoTreeGitDeleted     = { fg = p.rust },

  NvimTreeNormal        = { fg = p.fg, bg = p.bg },
  NvimTreeFolderIcon    = { fg = p.ochre },

  CmpItemAbbr           = { fg = p.fg },
  CmpItemAbbrMatch      = { fg = p.bone, bold = true },
  CmpItemKindFunction   = { fg = p.bone },
  CmpItemKindVariable   = { fg = p.fg_soft },
  CmpItemKindKeyword    = { fg = p.rust },
  CmpItemKindClass      = { fg = p.sage },

  IndentBlanklineChar   = { fg = p.bg_select },
  IblIndent             = { fg = p.bg_select },
  IblScope              = { fg = p.umber },
}

for group, spec in pairs(groups) do
  set_hl(0, group, spec)
end

-- Terminal colors
vim.g.terminal_color_0  = p.black
vim.g.terminal_color_1  = p.red
vim.g.terminal_color_2  = p.green
vim.g.terminal_color_3  = p.yellow
vim.g.terminal_color_4  = p.blue
vim.g.terminal_color_5  = p.purple
vim.g.terminal_color_6  = p.cyan
vim.g.terminal_color_7  = p.fg
vim.g.terminal_color_8  = p.ash
vim.g.terminal_color_9  = p.red
vim.g.terminal_color_10 = p.green
vim.g.terminal_color_11 = p.yellow
vim.g.terminal_color_12 = p.blue
vim.g.terminal_color_13 = p.purple
vim.g.terminal_color_14 = p.cyan
vim.g.terminal_color_15 = p.bone
