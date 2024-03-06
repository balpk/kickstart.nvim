local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load 'user.set'
load 'user.remap'
load 'user.commands'

require 'user.plugins'
-- vim: ts=2 sts=2 sw=2 et
