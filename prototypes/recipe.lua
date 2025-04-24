local chips_item = mods["wood-industry"] and settings.startup["wood-industry-resin"].value and "woodchips" or "wood"
local subgroup = mods["bioprocessing-tab"] and "vulcanus-agriculture" or "vulcanus-processes"

data:extend({
  {
    type = "recipe",
    name = "sulfuric-bacteria-filtering",
    category = "organic-or-chemistry",
    subgroup = subgroup,
    order = "e[bacteria]-a[sulfuric]-a[filtering]",
    surface_conditions = {
      {property="pressure", min=4000, max=4000}
    },
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      {type="fluid", name="sulfuric-acid", amount=100},
      {type="item", name=mods["wood-industry"] and "charcoal" or "coal", amount=1},
      {type="item", name="calcite", amount=1}
    },
    results = {
      {type="item", name="sulfuric-bacteria", amount=1, probability=0.02}
    },
    crafting_machine_tint = {
      primary = {r=0.000, g=0.500, b=1.000, a=1.000}, -- #007fffff
      secondary = {r=0.095, g=0.412, b=0.822, a=1.000}, -- #1868d1ff
    }
  },
  {
    type = "recipe",
    name = "sulfuric-bacteria-cultivation",
    icon = "__vulcanus-sulfuric-bacteria__/graphics/icons/sulfuric-bacteria-cultivation.png",
    category = "organic-or-chemistry",
    subgroup = subgroup,
    order = "e[bacteria]-a[sulfuric]-b[cultivation]",
    surface_conditions = {
      {property="pressure", min=4000, max=4000}
    },
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      {type="item", name="sulfuric-bacteria", amount=1},
      {type="fluid", name="sulfuric-acid", amount=10},
      {type="item", name="calcite", amount=1}
    },
    results = {
      {type="item", name="sulfuric-bacteria", amount=4}
    },
    crafting_machine_tint = {
      primary = {r=1.000, g=0.457, b=0.000, a=1.000}, -- #ff7400ff
      secondary = {r=1.000, g=0.196, b=0.000, a=1.000}, -- #ff3100ff
    },
    show_amount_in_title = false
  },
  {
    type = "recipe",
    name = "sulfuric-bacteria-pruning",
    icon = "__vulcanus-sulfuric-bacteria__/graphics/icons/sulfuric-bacteria-pruning.png",
    category = "organic-or-chemistry",
    subgroup = subgroup,
    order = "e[bacteria]-a[sulfuric]-d[pruning]",
    surface_conditions = {
      {property="pressure", min=4000, max=4000}
    },
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      {type="item", name="sulfuric-bacteria", amount=5},
      {type="fluid", name="steam", amount=100},
    },
    results = {
      {type="item", name="sulfur", amount=5}
    },
    crafting_machine_tint = {
      primary = {r=1.000, g=0.457, b=0.000, a=1.000}, -- #ff7400ff
      secondary = {r=1.000, g=0.196, b=0.000, a=1.000}, -- #ff3100ff
    }
  },
  {
    type = "recipe",
    name = "sulfuric-bacteria-melting",
    icon = "__vulcanus-sulfuric-bacteria__/graphics/icons/sulfuric-bacteria-melting.png",
    category = "metallurgy",
    subgroup = subgroup,
    order = "e[bacteria]-a[sulfuric]-e[melting]",
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      {type="item", name="sulfuric-bacteria", amount=1},
      {type="item", name="stone", amount=2},
      {type="fluid", name="lava", amount=50}
    },
    results = {
      {type="item", name="sulfuric-bacteria", amount=1, probability=0.75, ignored_by_productivity=1},
      {type="item", name="tungsten-ore",      amount=1, probability=0.15},
      {type="item", name="coal",              amount=1, probability=0.10},
      {type="item", name="carbon",            amount=1, probability=0.06},
      {type="item", name="tungsten-carbide",  amount=1, probability=0.04},
      {type="item", name="stone",             amount=1, probability=0.4}
    }
  }
})

if mods["wood-industry"] and settings.startup["wood-industry-resin"].value then
  data:extend({
    {
      type = "recipe",
      name = "reconstituted-wood-vulcanus",
      icons = {
        {icon="__vulcanus-sulfuric-bacteria__/graphics/icons/sulfuric-bacteria.png", shift={-8,-8}, scale=0.3},
        {icon="__wood-industry__/graphics/icons/resin.png", shift={8,-8}, scale=0.4},
        {icon="__base__/graphics/icons/wood.png"}
      },
      category = "organic-or-chemistry",
      subgroup = subgroup,
      order = "e[bacteria]-a[sulfuric]-c[wood]",
      enabled = false,
      allow_productivity = true,
      auto_recycle = false,
      energy_required = 1,
      ingredients = {
        {type="item", name="sulfuric-bacteria", amount=5},
        {type="item", name="resin", amount=1},
        {type="fluid", name="steam", amount=10}
      },
      results = {{type="item", name="wood", amount=2}},
      main_product = ""
    }
  })
end
