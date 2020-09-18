require "util"
require("prototypes.leg_smoke")

local table_deepcopy = util.table.deepcopy

local iconsmk2 = {
    {
        icon = "__spidertron-extended__/icons/spidertron_extended_mk2_item.png",
        icon_size = 64, 
        icon_mipmaps = 4
    }
}

-- MK2 spidertronmk2
local spidertronmk2_entity = table_deepcopy(data.raw["spider-vehicle"]["spidertron"])
spidertronmk2_entity.name = "spidertronmk2"
spidertronmk2_entity.icon = nil
spidertronmk2_entity.icon_size = nil
spidertronmk2_entity.icon_mipmaps = nil
spidertronmk2_entity.icons = iconsmk2
spidertronmk2_entity.minable.result = "spidertronmk2"
-- extra
spidertronmk2_entity.max_health = 5000
spidertronmk2_entity.inventory_size = 100
spidertronmk2_entity.equipment_grid = "spidertronmk2-grid"
spidertronmk2_entity.resistances = {
    {
        type = "acid",
        decrease = 0,
        percent = 75
    },
    {
        type = "electric",
        decrease = 0,
        percent = 75
    },
    {
        type = "explosion",
        decrease = 60,
        percent = 80
    },
    {
        type = "fire",
        decrease = 20,
        percent = 65
    },
    {
        type = "impact",
        decrease = 50,
        percent = 80
    },
    {
        type = "laser",
        decrease = 0,
        percent = 70
    },
    {
        type = "physical",
        decrease = 20,
        percent = 65
    }
}
spidertronmk2_entity.chunk_exploration_radius = 5
spidertronmk2_entity.automatic_weapon_cycling = true
spidertronmk2_entity.guns = {
    "spidertronmk2-rocket-launcher-1", 
    "spidertronmk2-rocket-launcher-2", 
    "spidertronmk2-rocket-launcher-3", 
    "spidertronmk2-rocket-launcher-4"
}
spidertronmk2_entity.chain_shooting_cooldown_modifier = 0.4
spidertronmk2_entity.braking_force = 2
spidertronmk2_entity.minimap_representation = {
    filename = "__spidertron-extended__/icons/spidertron_extended_mk2_map.png",
    flags = {"icon"},
    size = {128, 128},
    scale = 0.6
}

if not settings.startup["vanilla-spidertron-size"].value then
    spidertronmk2_entity.height = 1.75
	spidertronmk2_entity.spider_engine = {
        legs = {
            -- 5PM ordering them on the analog clock
            {
                blocking_legs = {2},
                ground_position = {2.8125, -3.125},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.46875 * 1.2, -0.6875 * 1.2},
            },
            -- 4PM
            {
                blocking_legs = {1, 3},
                ground_position = {4, -1.25},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.71875 * 1.2, -0.3125 * 1.2},
            },
            -- 2PM
            {
                blocking_legs = {2, 4},
                ground_position = {4, 1.25},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.78125 * 1.2, 0.125 * 1.2},
            },
            -- 1PM
            {
                blocking_legs = {3},
                ground_position = {2.8125, 3.125},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.46875 * 1.2, 0.53125 * 1.2},
            },
            -- 7PM
            {
                blocking_legs = {6},
                ground_position = {-2.8125, -3.125},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.46875 * 1.2, -0.6875 * 1.2},
            },
            -- 8PM
            {
                blocking_legs = {5, 7},
                ground_position = {-4, -1.25},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.71875 * 1.2, -0.3125 * 1.2},
            },
            -- 10PM
            {
                blocking_legs = {6, 8},
                ground_position = {-4, 1.25},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.78125 * 1.2, 0.125 * 1.2},
            },
            -- 11PM
            {
                blocking_legs = {7},
                ground_position = {-2.8125, 3.125},
                leg = "spidertronmk2-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.46875 * 1.2, 0.53125 * 1.2},
            }
        },
        military_target = 'spidertron-military-target',
        resistances = {
            {
                type = "acid",
                decrease = 0,
                percent = 75
            },
            {
                type = "electric",
                decrease = 0,
                percent = 75
            },
            {
                type = "explosion",
                decrease = 60,
                percent = 80
            },
            {
                type = "fire",
                decrease = 20,
                percent = 65
            },
            {
                type = "impact",
                decrease = 50,
                percent = 80
            },
            {
                type = "laser",
                decrease = 0,
                percent = 70
            },
            {
                type = "physical",
                decrease = 20,
                percent = 65
            }
        }
    }
	
-- modify the main body size
	spidertronmk2_entity.graphics_set.animation.layers[1].scale = 0.60
	spidertronmk2_entity.graphics_set.animation.layers[1].hr_version.scale = 0.60

	spidertronmk2_entity.graphics_set.animation.layers[2].scale = 0.60
	spidertronmk2_entity.graphics_set.animation.layers[2].hr_version.scale = 0.60

	spidertronmk2_entity.graphics_set.base_animation.layers[1].scale = 0.60
	spidertronmk2_entity.graphics_set.base_animation.layers[1].hr_version.scale = 0.60

	spidertronmk2_entity.graphics_set.base_animation.layers[2].scale = 0.60
	spidertronmk2_entity.graphics_set.base_animation.layers[2].hr_version.scale = 0.60

	spidertronmk2_entity.graphics_set.shadow_animation.scale = 0.60
	spidertronmk2_entity.graphics_set.shadow_animation.hr_version.scale = 0.60

	spidertronmk2_entity.graphics_set.shadow_base_animation.scale = 0.60
	spidertronmk2_entity.graphics_set.shadow_base_animation.hr_version.scale = 0.60
end

data:extend{
    spidertronmk2_entity
}