data:extend({
  {
    type = "technology",
    name = "sulfuric-bacteria-cultivation",
    icon = "__wood-universe-assets__/graphics/technology/sulfuric-bacteria-cultivation.png",
    icon_size = 256,
    effects = {
      {type="unlock-recipe", recipe="sulfuric-bacteria-filtering"},
      {type="unlock-recipe", recipe="sulfuric-bacteria-cultivation"},
      {type="unlock-recipe", recipe="sulfuric-bacteria-pruning"},
    },
    prerequisites = {"calcite-processing", "tungsten-carbide"},
    research_trigger = {
      type = "mine-entity",
      entity = "sulfuric-stromatolite"
    }
  }
})
