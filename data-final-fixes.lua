util = require "data/tf_util/tf_util"
names = require("shared")
shared = require("shared")

require("data/entities/attack_proxy/attack_proxy")

local droprate = settings.startup["mining_drone_chance_to_drop_armor_on_death"].value

for k,v in pairs(shared.drone_metadata) do
  if data.raw.armor[shared.drone_metadata[k].armor] then
    local armor = table.deepcopy(data.raw.armor[shared.drone_metadata[k].armor])

    for name, unit in pairs(data.raw.unit) do
      if name:find(shared.drone_metadata[k].name, 0, true) then
        if droprate then
          unit.loot = {
              {
                  count_max = 1,
                  count_min = 1,
                  item = armor.name,
                  probability = droprate / 100
              }
          }
        end
      end
      if name:find(shared.attack_proxy_name, 0, true) then
        unit.loot = nil
      end
    end
  end
end