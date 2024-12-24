local ftech = require("__fdsl__.lib.technology")

if mods["wood-industry"] and settings.startup["wood-industry-resin"].value then
  ftech.add_unlock("sulfuric-bacteria-cultivation", "synthetic-resin")
  ftech.add_unlock("sulfuric-bacteria-cultivation", "reconstituted-wood")
end
