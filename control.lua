local function on_configuration_changed(event)
	local vulcanus = game.get_surface("vulcanus")
	if vulcanus then
		if not vulcanus.map_gen_settings.autoplace_controls["sulfuric-stromatolite"] then
			local map_gen_settings = vulcanus.map_gen_settings
			map_gen_settings.autoplace_settings["entity"].settings["sulfuric-stromatolite"] = {}
			vulcanus.map_gen_settings = map_gen_settings
			vulcanus.regenerate_entity("sulfuric-stromatolite")
		end
	end
end

script.on_configuration_changed(on_configuration_changed)
