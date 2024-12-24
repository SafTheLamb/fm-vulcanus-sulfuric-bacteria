local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local chips_item = mods["wood-industry"] and settings.startup["wood-industry-resin"].value and "woodchips" or "wood"

data:extend({
  {
    type = "item",
    name = "sulfuric-bacteria",
    icon = "__wood-universe-assets__/graphics/icons/sulfuric-bacteria.png",
    pictures = {
      {size=64, filename="__wood-universe-assets__/graphics/icons/sulfuric-bacteria.png", scale=0.5, mipmap_count=4},
      {size=64, filename="__wood-universe-assets__/graphics/icons/sulfuric-bacteria-1.png", scale=0.5, mipmap_count=4},
      {size=64, filename="__wood-universe-assets__/graphics/icons/sulfuric-bacteria-2.png", scale=0.5, mipmap_count=4},
      {size=64, filename="__wood-universe-assets__/graphics/icons/sulfuric-bacteria-3.png", scale=0.5, mipmap_count=4},
    },
    subgroup = "agriculture-processes",
    order = "d[agriculture]-a[sulfuric-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "vulcanus",
    weight = 1 * kg,
    spoil_ticks = 60 * second,
    spoil_result = chips_item
  }
})
