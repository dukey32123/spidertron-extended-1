-- mk2 recipe
if not settings.startup["disable-spidertronmk2"].value then
    local spidertronmk2_recipe = {
        type = "recipe",
        name = "spidertronmk2",
        enabled = false,
        ingredients = {
            {"spidertron",1},
            {"low-density-structure",150},
            {"fusion-reactor-equipment",2},
            {"rocket-control-unit",20},
            {"beacon",5},
            {"speed-module-3",5},
            {"effectivity-module-3",5}
        },
        energy_required = 10,
        result = "spidertronmk2"
    }
    
    data:extend{
        spidertronmk2_recipe
    }
end

-- mk3 recipe
if not settings.startup["disable-spidertronmk3"].value then
    local ingr = {
        {"spidertronmk2",1},
        {"low-density-structure",150},
        {"fusion-reactor-equipment",2},
        {"beacon",10},
        {"speed-module-3",10},
        {"effectivity-module-3",10},
        {"satellite",1}
    }
    if settings.startup["disable-spidertronmk2"].value then
        -- if spidertronmk2 disabled use this recipe
        ingr = {
            {"spidertron",1},
            {"low-density-structure",150},
            {"fusion-reactor-equipment",2},
            {"beacon",10},
            {"speed-module-3",10},
            {"effectivity-module-3",10},
            {"satellite",1}
        }
    end
    local spidertronmk3_recipe = {
        type = "recipe",
        name = "spidertronmk3",
        enabled = false,
        ingredients = ingr,
        energy_required = 10,
        result = "spidertronmk3"
    }
    data:extend{
        spidertronmk3_recipe
    }
end

-- mk4 recipe
if not settings.startup["disable-spidertronmk4"].value then
    local ingr = {
        {"spidertronmk3",1},
        {"low-density-structure",300},
        {"fusion-reactor-equipment",5},
        {"beacon",30},
        {"speed-module-3",30},
        {"effectivity-module-3",30},
        {"satellite",2}
    }
    if settings.startup["disable-spidertronmk3"].value then
        -- if spidertronmk2 disabled use this recipe
        ingr = {
            {"spidertronmk2",1},
            {"low-density-structure",150},
            {"fusion-reactor-equipment",2},
            {"beacon",10},
            {"speed-module-3",10},
            {"effectivity-module-3",10},
            {"satellite",1}
        }
    end
    local spidertronmk4_recipe = {
        type = "recipe",
        name = "spidertronmk4",
        enabled = false,
        ingredients = ingr,
        energy_required = 10,
        result = "spidertronmk4"
    }
    data:extend{
        spidertronmk4_recipe
    }
end


-- spider builder recipe
if not settings.startup["disable-spidertron-builder"].value then
    local spidertron_builder_recipe = {
        type = "recipe",
        name = "spidertron-builder",
        enabled = false,
        ingredients = {
            {"raw-fish",1},
            {"rocket-control-unit",16},
            {"low-density-structure",150},
            {"productivity-module-3",10},
            {"steel-chest",10},
            {"construction-robot",50},
            {"radar",50},
            {"laser-turret",2}
        },
        energy_required = 10,
        result = "spidertron-builder"
    }

    data:extend{
        spidertron_builder_recipe
    }
end

-- immolator spider
if not settings.startup["disable-immolator"].value then
    local immolator = {
        type = "recipe",
        name = "immolator",
        enabled = false,
        ingredients = {
            {"raw-fish",1},
            {"refined-concrete",200},
            {"low-density-structure",150},
            {"flamethrower",1},
            {"storage-tank",1},
            {"fusion-reactor-equipment",4},
            {"exoskeleton-equipment",8},
            {"radar",2}
        },
        energy_required = 10,
        result = "immolator"
    }

    data:extend{
        immolator
    }
end