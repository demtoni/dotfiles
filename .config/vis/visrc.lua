-- load standard vis module, providing parts of the Lua API
require('vis')

require('plugins/cursors')
require('plugins/go')
require('plugins/gf')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme minimal')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set tw 2')
	vis:command('set ai')
	vis:command('set go_fmt_binary goimports')
end)
