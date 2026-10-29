-- load standard vis module, providing parts of the Lua API
require('vis')
require('plugins/vis-lspc')
require('plugins/vis-autoclose')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command('set theme vague')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win) -- luacheck: no unused args
	-- Your per window configuration options e.g.
	vis:command('set relativenumber')
end)
