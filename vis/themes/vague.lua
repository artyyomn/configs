-- vague theme for Vis editor
-- Inspired by vague.nvim
-- https://github.com/vague-theme/vague.nvim

local lexers = vis.lexers

-- Vague palette for Vis
lexers.STYLE_DEFAULT = 'fore:#cdcdcd,back:#141415'
lexers.STYLE_NOTHING = ''
lexers.STYLE_CLASS = 'fore:#9bb4bc'
lexers.STYLE_COMMENT = 'fore:#606079'
lexers.STYLE_CONSTANT = 'fore:#aeaed1'
lexers.STYLE_DEFINITION = 'fore:#c48282,bold'
lexers.STYLE_ERROR = 'fore:#d8647e,back:#252530,bold'
lexers.STYLE_FUNCTION = 'fore:#c48282'
lexers.STYLE_KEYWORD = 'fore:#6e94b2,bold'
lexers.STYLE_LABEL = 'fore:#c3c3d5'
lexers.STYLE_NUMBER = 'fore:#e0a363'
lexers.STYLE_OPERATOR = 'fore:#90a0b5'
lexers.STYLE_REGEX = 'fore:#e8b589'
lexers.STYLE_STRING = 'fore:#e8b589'
lexers.STYLE_PREPROCESSOR = 'fore:#bb9dbd,bold'
lexers.STYLE_TAG = 'fore:#c48282,bold'
lexers.STYLE_TYPE = 'fore:#9bb4bc,bold'
lexers.STYLE_VARIABLE = 'fore:#cdcdcd'
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = 'fore:#b4d4cf'
lexers.STYLE_IDENTIFIER = ''

-- Editor UI
lexers.STYLE_LINENUMBER = 'fore:#606079,back:#141415'
lexers.STYLE_LINENUMBER_CURSOR = 'fore:#c48282,back:#141415'
lexers.STYLE_CURSOR = 'back:#333338,keep_attribute'
lexers.STYLE_CURSOR_PRIMARY = 'fore:#141415,back:#c48282,bold,keep_attribute'
lexers.STYLE_CURSOR_LINE = 'back:#1c1c24,keep_attribute'
lexers.STYLE_COLOR_COLUMN = 'back:#252530'
lexers.STYLE_SELECTION = 'fore:#cdcdcd,back:#333738'
lexers.STYLE_STATUS = 'back:#1c1c24,fore:#c3c3d5'
lexers.STYLE_STATUS_FOCUSED = 'back:#252530,fore:#c48282,bold'
lexers.STYLE_SEPARATOR = 'fore:#454550'
lexers.STYLE_INFO = 'fore:#7e98e8,back:#141415'
lexers.STYLE_EOF = 'fore:#606079'

