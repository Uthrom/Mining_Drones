data:extend({
  {
    type = "bool-setting",
    name = "ignore_rocks",
    order = "ab",
    setting_type = "startup",
    localised_name = "Ignore rocks",
    default_value = false
  },
  {
    type = "bool-setting",
    name = "mute_drones",
    order = "ac",
    setting_type = "startup",
    localised_name = "Mute drone sounds",
    default_value = false
  },
  {
    type = "int-setting",
    name = "mining_drone_chance_to_drop_armor_on_death",
    order = "ad",
    setting_type = "startup",
    localised_name = "Chance to drop armor on death",
    default_value = 100,
    minimum_value = 0,
    maximum_value = 100
  },
})
