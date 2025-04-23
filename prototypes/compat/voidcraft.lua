if mods["Voidcraft"] then
  local vcc = require("__Voidcraft__.prototypes.costs")

  local woodchips_bad_product = mods["wood-industry"] and "woodchips" or "wood"
  local scrapamt = mods["wood-industry"] and 2 or 1

  data:extend({
    VOIDCRAFT.voidcraft_recipe(
    {prefix="__vulcanus-sulfuric-bacteria__", subgroup="voidcraft-vulcanus", img="sulfuric-stromatolite", localised_name="entity-name.sulfuric-stromatolite", amt2=scrapamt},
      {"sulfuric-bacteria", woodchips_bad_product, "resin"}, "vpa-xbb", vcc.advanced_resource, "s6x-void-vulcanus", {0.7, 0.22, 0.6}),
  })
end
