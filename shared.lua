--Shared data interface between data and script, notably prototype names.

local data = {}

data.drone_level = 0
data.drone_names = { [0] = "mining-drone-mk1", [1] = "mining-drone-mk2", [2] = "mining-drone-mk3" }
data.drone_hps = { [0] = 100, [1] = 200, [2] = 400 }
data.drone_attack_range = { [0] = 0.5, [1] = 0.1, [2] = 2 }
data.drone_resistances = {
    [0] = {
        nil,
    },
    [1] = {
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
    [2] = {
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
    }
}

data.drone_ingredients = {
    [0] = {
        {"iron-plate", 10},
        {"iron-gear-wheel", 5},
        {"iron-stick", 10}
    },
    [1] = {
        {"mining-drone-mk1", 1},
        {"light-armor", 1}
    },
    [2] = {
        {"mining-drone-mk2", 1},
        {"heavy-armor", 1}
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
