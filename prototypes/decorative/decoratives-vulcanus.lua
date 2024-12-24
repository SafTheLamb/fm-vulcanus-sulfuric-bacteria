local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require ("__base__.prototypes.entity.sounds")
local decorative_trigger_effects = require("__base__.prototypes.decorative.decorative-trigger-effects")

data:extend({
  {
    type = "noise-expression",
    name = "vulcanus_stromalite_main",
    -- based on vulcanus_chimney_main
    expression = "2 * (vulcanus_mountains_biome - 0.5) - 2.3 + 1.2 * min(aux, moisture) + vulcanus_rock_noise - 0.5 * vulcanus_decorative_knockout"
  },
  {
    type = "noise-expression",
    name = "vulcanus_stromalite_sulfuric",
    -- based on vulcanus_chimney_sulfuric
    expression = "-random_penalty_between(0, 1, 1) + 10 * min(0.2, clamp(vulcanus_stromalite_main, 0.017, 0.05)) * (vulcanus_sulfuric_acid_region_patchy > 0)"
  },
  {
    type = "simple-entity",
    name = "sulfuric-stromatolite",
    flags = {"placeable-neutral", "placeable-off-grid"},
    icon = "__wood-universe-assets__/graphics/icons/sulfuric-stromatolite.png",
    subgroup = "grass",
    order = "b[decorative]-l[rock]-a[big]",
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.7, -0.7}, {0.7, 0.7}},
    damaged_trigger_effect = hit_effects.rock(),
    render_layer = "object",
    max_health = 500,
    autoplace = {
      probability_expression = "vulcanus_chimney_sulfuric"
    },
    dying_trigger_effect = decorative_trigger_effects.big_rock(),
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = 0.4,
      results = {
        {type = "item", name = "stone", amount_min = 3, amount_max = 7},
        {type = "item", name = "sulfur", amount_min = 13, amount_max = 17},
        {type = "item", name = "sulfuric-bacteria", amount_min = 23, amount_max = 37}
      }
    },
    resistances = {{type="fire", percent=100}},
    map_color = {129, 105, 78},
    count_as_rock_for_filtered_deconstruction = true,
    mined_sound = sounds.deconstruct_bricks(1.0),
    impact_category = "stone",
    pictures =
    {
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-01.png",
        width = 209,
        height = 138,
        shift = {0.304688, -0.4},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-02.png",
        width = 165,
        height = 129,
        shift = {0.0, 0.0390625},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-03.png",
        width = 151,
        height = 139,
        shift = {0.151562, 0.0},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-04.png",
        width = 216,
        height = 110,
        shift = {0.390625, 0.0},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-05.png",
        width = 154,
        height = 147,
        shift = {0.328125, 0.0703125},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-06.png",
        width = 154,
        height = 132,
        shift = {0.16875, -0.1},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-07.png",
        width = 193,
        height = 130,
        shift = {0.3, -0.2},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-08.png",
        width = 136,
        height = 117,
        shift = {0.0, 0.0},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-09.png",
        width = 157,
        height = 115,
        shift = {0.1, 0.0},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-10.png",
        width = 198,
        height = 153,
        shift = {0.325, -0.1},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-11.png",
        width = 190,
        height = 115,
        shift = {0.453125, 0.0},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-12.png",
        width = 229,
        height = 126,
        shift = {0.539062, -0.015625},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-13.png",
        width = 151,
        height = 125,
        shift = {0.0703125, 0.179688},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-14.png",
        width = 137,
        height = 117,
        shift = {0.160938, 0.0},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-15.png",
        width = 201,
        height = 141,
        shift = {0.242188, -0.195312},
        scale = 0.4
      },
      {
        filename = "__wood-universe-assets__/graphics/entity/stromatolite/sulfuric/stromatolite-16.png",
        width = 209,
        height = 154,
        shift = {0.351562, -0.1},
        scale = 0.4
      }
    }
  }
})
