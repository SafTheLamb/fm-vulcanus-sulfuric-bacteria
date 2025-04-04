local ftech = require("__fdsl__.lib.technology")

if mods["wood-industry"] and settings.startup["wood-industry-resin"].value then
  ftech.add_unlock("sulfuric-bacteria-cultivation", "reconstituted-wood-vulcanus")
end

ftech.add_unlock("foundry", "sulfuric-bacteria-pruning")

ftech.add_prereq("metallurgic-science-pack", "sulfuric-bacteria-cultivation")

-------------------------------------------------------------------------- Map gen changes

local vulcanus = data.raw.planet["vulcanus"]
if vulcanus and vulcanus.map_gen_settings and vulcanus.map_gen_settings.autoplace_controls then
  vulcanus.map_gen_settings.autoplace_settings["entity"].settings["sulfuric-stromatolite"] = {}
end

-------------------------------------------------------------------------- Entity changes

local sulfuric_entities = {
  {name="vulcanus-chimney", min=3, max=7},
  {name="small-demolisher-corpse", min=20, max=34},
  {name="medium-demolisher-corpse", min=30, max=49},
  {name="big-demolisher-corpse", min=40, max=54},
  {name="behemoth-demolisher-corpse", min=50, max=69}
}

for i,entity in pairs(sulfuric_entities) do
  local corpse = data.raw["simple-entity"][entity.name]
  if corpse then
    table.insert(corpse.minable.results, {type="item", name="sulfuric-bacteria", amount_min=entity.min, amount_max=entity.max})
  end
end

if mods["wood-industry"] and settings.startup["wood-industry-resin"].value then
  table.insert(data.raw["simple-entity"]["sulfuric-stromatolite"].minable.results, {type="item", name="resin", amount_min=7, amount_max=11})
end
