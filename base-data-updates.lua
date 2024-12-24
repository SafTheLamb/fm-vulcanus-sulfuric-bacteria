-------------------------------------------------------------------------- Map gen changes

local vulcanus = data.raw.planet["vulcanus"]
vulcanus.map_gen_settings.autoplace_settings["entity"].settings["sulfuric-stromatolite"] = {}

-------------------------------------------------------------------------- Enemy changes

local demolisher_corpses = {
  "small-demolisher-corpse",
  "medium-demolisher-corpse",
  "big-demolisher-corpse",
  "behemoth-demolisher-corpse",
}

for i,corpse_name in pairs(demolisher_corpses) do
  local corpse = data.raw["simple-entity"][corpse_name]
  if corpse then
    table.insert(corpse.minable.results, {type="item", name="sulfuric-bacteria", amount_min=10*i+10, amount_max=15*i+19})
  end
end
