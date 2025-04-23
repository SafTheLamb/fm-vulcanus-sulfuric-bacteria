data:extend({
  {
    type = "technology",
    name = "sulfuric-bacteria-cultivation",
    icon = "__vulcanus-sulfuric-bacteria__/graphics/technology/sulfuric-bacteria-cultivation.png",
    icon_size = 256,
    effects = {
      {type="unlock-recipe", recipe="sulfuric-bacteria-filtering"},
      {type="unlock-recipe", recipe="sulfuric-bacteria-cultivation"},
    },
    prerequisites = {"calcite-processing"},
    research_trigger = {
      type = "mine-entity",
      entity = "sulfuric-stromatolite"
    }
  },
  {
    type = "technology",
    name = "sulfuric-bacteria-melting",
    icon = "__vulcanus-sulfuric-bacteria__/graphics/technology/sulfuric-bacteria-melting.png",
    icon_size = 256,
    effects = {
      {type="unlock-recipe", recipe="sulfuric-bacteria-melting"}
    },
    prerequisites = {"metallurgic-science-pack"},
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    }
  }
})
