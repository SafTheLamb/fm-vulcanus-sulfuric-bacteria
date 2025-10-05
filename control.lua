script.on_init(function()
  local vulcanus = game.surfaces.vulcanus
  if vulcanus then
    local mgs = vulcanus.map_gen_settings
    if not mgs.autoplace_settings.entity.settings["sulfuric-stromatolite"] then
      mgs.autoplace_settings.entity.settings["sulfuric-stromatolite"] = {}
      vulcanus.map_gen_settings = mgs
    end
  end
end)
