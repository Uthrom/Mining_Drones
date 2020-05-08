local path = util.path("data/units/smg_guy/")
local make_drone = require("data/entities/mining_drone/mining_drone_entity")

local base = util.copy(data.raw.character.character)

for k, _ in pairs(names.drone_metadata) do
  local name = names.drone_metadata[k].name

  -- log("Making drone "..name)
  make_drone(name, {r = 1, g = 1, b = 1, a = 0.5}, "base", names.drone_metadata[k].health, names.drone_metadata[k].resistance)

  local item = {
    type = "item",
    name = name,
    localised_name = {name},
    icons = {
      { 
        icon = base.icon,
        icon_size = base.icon_size
      }
    },
    flags = {},
    subgroup = "extraction-machine",
    order = "zb"..name,
    stack_size = 20
    --place_result = name
  }

  for k, v in pairs(names.drone_metadata[k].icon_layers) do
    -- log("Layer: "..serpent.block(v))
    item.icons[#item.icons + 1] = v 
  end

  -- log("Item:"..name)
  -- log(serpent.block(item))

  local recipe = {
    type = "recipe",
    name = name,
    localised_name = {name},
    --category = ,
    enabled = true,
    ingredients = names.drone_metadata[k].ingredients,
    energy_required = 2,
    result = name
  }

  data:extend
  {
    item,
    recipe
  }
end