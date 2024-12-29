local chips_item = mods["wood-industry"] and settings.startup["wood-industry-resin"].value and "woodchips" or "wood"

data:extend({
  {
    type = "recipe",
    name = "sulfuric-bacteria-filtering",
    category = "organic-or-chemistry",
    subgroup = "vulcanus-processes",
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
    icon = "__wood-universe-assets__/graphics/icons/sulfuric-bacteria-cultivation.png",
    category = "organic-or-chemistry",
    subgroup = "vulcanus-processes",
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
    icon = "__wood-universe-assets__/graphics/icons/sulfuric-bacteria-pruning.png",
    category = "organic-or-chemistry",
    subgroup = "vulcanus-processes",
    order = "e[bacteria]-a[sulfuric]-c[pruning]",
    surface_conditions = {
      {property="pressure", min=4000, max=4000}
    },
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      {type="item", name="sulfuric-bacteria", amount=3},
      {type="item", name="tungsten-carbide", amount=1}
    },
    results = {
      {type="item", name=chips_item, amount=20}
    },
    crafting_machine_tint = {
      primary = {r=1.000, g=0.457, b=0.000, a=1.000}, -- #ff7400ff
      secondary = {r=1.000, g=0.196, b=0.000, a=1.000}, -- #ff3100ff
    }
  },
  {
    type = "recipe",
    name = "sulfuric-bacteria-melting",
    icon = "__wood-universe-assets__/graphics/icons/sulfuric-bacteria-melting.png",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "e[bacteria]-a[sulfuric]-d[melting]",
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
      name = "synthetic-resin",
      localised_name = {"recipe-name.synthetic-resin"},
      icons = {
        {icon="__wood-base-assets__/graphics/icons/resin.png"},
        {icon="__base__/graphics/icons/fluid/petroleum-gas.png", shift={-8,-8}, scale=0.3}
      },
      category = "chemistry-or-cryogenics",
      subgroup = "vulcanus-processes",
      order = "f[wood]-b[synthetic-resin]",
      enabled = false,
      allow_productivity = true,
      auto_recycle = false,
      ingredients = {
        {type="item", name="coal", amount=1},
        {type="fluid", name="petroleum-gas", amount=30}
      },
      results = {{type="item", name="resin", amount=2}}
    },
    {
      type = "recipe",
      name = "reconstituted-wood",
      icons = {
        {icon="__base__/graphics/icons/wood.png"},
        {icon="__wood-base-assets__/graphics/icons/resin.png", shift={-8,-8}, scale=0.3, draw_background=true}
      },
      category = "organic-or-assembling",
      subgroup = "vulcanus-processes",
      order = "f[wood]-c[reconstituted-wood]",
      enabled = false,
      allow_productivity = true,
      auto_recycle = false,
      ingredients = {
        {type="item", name="woodchips", amount=5},
        {type="item", name="resin", amount=1}
      },
      results = {{type="item", name="wood", amount=2}}
    }
  })
end
