local path = util.path("data/units/smg_guy/")
local make_drone = require("data/entities/mining_drone/mining_drone_entity")

local base = util.copy(data.raw.character.character)

for k,v in pairs(names.drone_names) do
  local name = names.drone_names[k]

  log("Making drone "..name)
  make_drone(name, {r = 1, g = 1, b = 1, a = 0.5}, "base", names.drone_hps[k])

  local item = {
    type = "item",
    name = name,
    localised_name = {name},
    icon = base.icon,
    icon_size = base.icon_size,
    flags = {},
    subgroup = "extraction-machine",
    order = "zb"..name,
    stack_size = 20,
    --place_result = name
  }

  local recipe = {
    type = "recipe",
    name = name,
    localised_name = {name},
    --category = ,
    enabled = true,
    ingredients = names.drone_ingredients[k],
    energy_required = 2,
    result = name
  }

  data:extend
  {
    item,
    recipe
  }
end