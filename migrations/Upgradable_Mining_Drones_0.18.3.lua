
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
            -- log("Mining depot: "..entity.name)
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
        end
        
    end
    
end 

MigrateAssemblers()
