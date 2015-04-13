local mod = require 'luact.module'
local bar = mod.require 'bar'
local baz = mod.require 'baz'

assert(bar:fn() == 'foo.baz ver2')
assert(baz:fn() == 'foo.baz')

return {
	bar = function ()
		return bar:fn()
	end,
	baz = function ()
		return baz:fn()
	end,
}
