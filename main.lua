local mod = require 'luact.module'
local bar = mod.require 'bar'
local baz = mod.require 'baz'

assert(bar:fn():match('foo.baz ver[23]'))
assert(baz:fn() == 'foo.baz')

return {
	bar = function ()
		return bar:fn()
	end,
	baz = function ()
		return baz:fn()
	end,
}
