--Shared data interface between data and script, notably prototype names.

local data = {}

data.drone_metadata = {
    [0] = {
        name = "mining-drone-mk1",
        health = 100,
        attack_range = 0.5,
        resistance = {
            nil
        },
        ingredients = {
            {"iron-plate", 10},
            {"iron-gear-wheel", 5},
            {"iron-stick", 10}
        },
        icon_layers = {
            nil
        },
        ore_icon_layers = {
            {
                icon = "__base__/graphics/icons/character.png",
                icon_size = 64,
                shift={8,0},
                scale=0.50
            }
        }
    },

    [1] = {
        name = "mining-drone-mk2",
        health = 200,
        attack_range = 1,
        resistance = {
            {
                type = "physical",
                decrease = 3,
                percent = 20
            },
            {
                type = "acid",
                decrease = 0,
                percent = 20
            },
            {
                type = "explosion",
                decrease = 2,
                percent = 20
            },
            {
                type = "fire",
                decrease = 0,
                percent = 10
            }
        }, 
        ingredients = {
            {"mining-drone-mk1", 1},
            {"light-armor", 1}
        },
        armor = "light-armor",
        icon_layers = {
            {
                icon = "__base__/graphics/icons/light-armor.png",
                icon_size=64,
                shift={8,8},
                scale=0.25
            }
        },
        ore_icon_layers = {
--            {
--                icon = "__base__/graphics/icons/character.png",
--                icon_size = 64,
--                shift={8,0},
--                scale=0.375
--            },
            {
                icon = "__base__/graphics/icons/light-armor.png",
                icon_size = 64,
                shift={8,0},
                scale=0.375
            }
        }
    },

    [2] = {
        name = "mining-drone-mk3",
        health = 400,
        attack_range = 2,
        resistance = {
            {
                type = "physical",
                decrease = 6,
                percent = 30
            },
            {
                type = "explosion",
                decrease = 20,
                percent = 30
            },
            {
                type = "acid",
                decrease = 0,
                percent = 40
            },
            {
                type = "fire",
                decrease = 0,
                percent = 30
            }
        },
        ingredients = {
            {"mining-drone-mk2", 1},
            {"heavy-armor", 1}
        },
        armor = "heavy-armor",
        icon_layers = {
            { 
                icon = "__base__/graphics/icons/heavy-armor.png",
                icon_size=64,
                shift={8,8},
                scale=0.25
            }
        },
        ore_icon_layers = {
--            {
--                icon = "__base__/graphics/icons/character.png",
--                icon_size = 64,
--                shift={8,0},
--                scale=0.375
--            },
            {
                icon = "__base__/graphics/icons/heavy-armor.png",
                icon_size = 64,
                shift={8,0},
                scale=0.375
            }
        }
    }
}

data.proxy_chest_name = "mining-drone-proxy-chest"
data.mining_damage = 5
data.mining_interval = math.floor(26 * 1.5) --dictated by character mining animation
data.attack_proxy_name = "mining-drone-attack-proxy-new"
data.mining_depot = "mining-depot"
data.mining_depot_chest_h = "mining-depot-chest-h"
data.mining_depot_chest_v = "mining-depot-chest-v"
data.variation_count = 5

data.mining_speed_technology = "mining-drone-mining-speed"
data.mining_productivity_technology = "mining-drone-productivity"

return data
