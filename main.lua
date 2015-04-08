local bar = require 'bar'
local baz = require 'baz'

assert(bar:fn() == 'foo.baz ver2')
assert(baz:fn() == 'foo.baz')

return true
