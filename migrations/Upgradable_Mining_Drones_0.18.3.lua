
local function MigrateAssemblers()
    for _, surface in pairs(game.surfaces) do
        local recipe
        for _, entity in ipairs(surface.find_entities_filtered{type="assembling-machine"}) do
            recipe = entity.get_recipe()
            if recipe ~= nil then
                log("Assembler: "..entity.name.." Recipe: "..recipe.name)
                if recipe.name == "mining-drone" then
                    entity.set_recipe("mining-drone-mk1")
                end
            end
        end
    

        for _, entity in ipairs(surface.find_entities_filtered{name="mining-depot"}) do
            recipe = entity.get_recipe()
            if recipe ~= nil then 
                log("Depot: "..entity.name.." Recipe: "..recipe.name)
            else 
                log("Depot recipe NIL")
            end


--[[
            local output_ore 
            local fluid 
            local recipe_name

            for k, _ in pairs(entity.get_output_inventory().get_contents()) do output_ore = k end
            for k, _ in pairs(entity.get_fluid_contents()) do fluid = k end 

            if not output_ore and fluid == "sulfuric-acid" then 
                output_ore = "uranium-ore"
            end

            if output_ore then
                recipe_name = "mine-"..output_ore
                if fluid then
                    recipe_name = recipe_name.."-with-"..fluid
                end
                recipe_name = recipe_name.."-mining-drone-mk1"
                entity.set_recipe(recipe_name)
            end
            ]]
        end
        
    end
    
end 

MigrateAssemblers()

--[[
local function MigrateRecipes()

    for i, recipe in pairs(data.raw['recipe']) do
        log("Recipe: "..recipe.name)
        if string.match(recipe.name, "mine-%mining-drone") then
            string.gsub(recipe.name, "mining-drone", "-mining-drone-mk1")
            log("Changed to: "..recipe.name)
        end
    end
end

MigrateRecipes()
]]