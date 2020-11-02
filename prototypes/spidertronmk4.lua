-- disabling spidertronmk3 if required
if settings.startup["disable-spidertronmk3"].value then
    return
end

require "util"
local table_deepcopy = util.table.deepcopy

local mk4_inv_size = settings.startup["spidertronmk4-invsize"].value
local mk4_hp = settings.startup["spidertronmk4-hp"].value

local leg_hit_the_ground_trigger = {
    {
        offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}},
        repeat_count = 4,
        smoke_name = "smoke-building",
        speed_from_center = 0.03,
        starting_frame_deviation = 5,
        starting_frame_speed_deviation = 5,
        type = "create-trivial-smoke",
        start_scale = 1.4,
        end_scale = 1.4
    }
}

local iconsmk4 = {
    {
        icon = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_mk4_item.png",
        icon_size = 64, 
        icon_mipmaps = 4
    }
}

-- MK4
local spidertronmk4_entity = table_deepcopy(data.raw["spider-vehicle"]["spidertron"])
spidertronmk4_entity.name = "spidertronmk4"
spidertronmk4_entity.icon = nil
spidertronmk4_entity.icon_size = nil
spidertronmk4_entity.icon_mipmaps = nil
spidertronmk4_entity.icons = iconsmk4
spidertronmk4_entity.minable.result = "spidertronmk4"
-- extra
spidertronmk4_entity.max_health = mk4_hp
spidertronmk4_entity.inventory_size = mk4_inv_size
spidertronmk4_entity.equipment_grid = "spidertronmk4-grid"
spidertronmk4_entity.resistances = {
    {
        type = "acid",
        decrease = 0,
        percent = 90
    },
    {
        type = "electric",
        decrease = 0,
        percent = 90
    },
    {
        type = "explosion",
        decrease = 100,
        percent = 90
    },
    {
        type = "fire",
        decrease = 25,
        percent = 80
    },
    {
        type = "impact",
        decrease = 50,
        percent = 90
    },
    {
        type = "laser",
        decrease = 0,
        percent = 80
    },
    {
        type = "physical",
        decrease = 25,
        percent = 80
    }
}
spidertronmk4_entity.chunk_exploration_radius = 7
spidertronmk4_entity.automatic_weapon_cycling = true
-- wanted to try flamethrower, it works but with cycling it's not fun
spidertronmk4_entity.guns = {
    "spidertronmk4-rocket-launcher-1", 
    "spidertronmk4-rocket-launcher-2", 
    "spidertronmk4-rocket-launcher-3", 
    "spidertronmk4-rocket-launcher-4"
}
spidertronmk4_entity.chain_shooting_cooldown_modifier = 0.2
spidertronmk4_entity.braking_force = 10

-- for some reason the line below this doesn't do anything
-- spidertronmk3_entity.healing_per_tick = 0.5

-- table.insert(data.raw["technology"]["military-2"]["effects"], {type = "unlock-recipe", recipe = "basic-grenade-2"})
-- trying to add health_regen setting to spidertronmk3
-- local health_regen = 15
-- table.insert(spidertronmk3_entity, health_regen)
-- -- spidertronmk3_entity.health_regen = 15
-- if settings.startup["disable-health-regenmk3"].value then
    -- spidertronmk3_entity.health_regen = 0
-- end

-- modifies the icon displayed on the map
spidertronmk4_entity.minimap_representation = {
    filename = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_mk4_map.png",
    flags = {"icon"},
    size = {128, 128},
    scale = 0.9
}

-- trying to change size
-- spidertronmk3_entity.selection_box = {{-2, -2}, {2, 2}}
-- spidertronmk3_entity.collision_box = {{-2, -2}, {2, 2}}

-- changes the eye texture	
spidertronmk4_entity.graphics_set.animation.layers[3] = {
	filename = "__spidertron-extended-dukey-edition__/graphics/spidertron_mk4_eye.png",
	width = 66,
	height = 70,
	line_length = 8,
	direction_count = 64,
	shift = util.by_pixel(0, -19),
	hr_version = {
		filename = "__spidertron-extended-dukey-edition__/graphics/spidertron_mk4_eye_HD.png",
		width = 132,
		height = 138,
		line_length = 8,
		direction_count = 64,
		scale = 0.5, --0.5 default
		shift = util.by_pixel(0, -19)
	}
}

-- trying to move copy the spidertron legs
if not settings.startup["vanilla-spidertron-size"].value then
    spidertronmk4_entity.height = 2.0
    spidertronmk4_entity.spider_engine = {
        legs = {
            -- 5PM ordering them on the analog clock
            {
                blocking_legs = {2},
                ground_position = {3.375, -3.75},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.46875 * 1.4, -0.6875 * 1.4},
            },
            -- 4PM
            {
                blocking_legs = {1, 3},
                ground_position = {5, -1.5},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.71875 * 1.4, -0.3125 * 1.4},
            },
            -- 2PM
            {
                blocking_legs = {2, 4},
                ground_position = {5, 1.5},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.78125 * 1.4, 0.125 * 1.4},
            },
            -- 1PM
            {
                blocking_legs = {3},
                ground_position = {3.375, 3.75},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {0.46875 * 1.4, 0.53125 * 1.4},
            },
            -- 7PM
            {
                blocking_legs = {6},
                ground_position = {-3.375, -3.75},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.46875 * 1.4, -0.6875 * 1.4},
            },
            -- 8PM
            {
                blocking_legs = {5, 7},
                ground_position = {-5, -1.5},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.71875 * 1.4, -0.3125 * 1.4},
            },
            -- 10PM
            {
                blocking_legs = {6, 8},
                ground_position = {-5, 1.5},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.78125 * 1.4, 0.125 * 1.4},
            },
            -- 11PM
            {
                blocking_legs = {7},
                ground_position = {-3.375, 3.75},
                leg = "spidertronmk4-leg",
                leg_hit_the_ground_trigger = leg_hit_the_ground_trigger,
                mount_position = {-0.46875 * 1.4, 0.53125 * 1.4},
            }
        },
        military_target = 'spidertron-military-target',
        resistances = {
            {
                type = "acid",
                decrease = 0,
                percent = 90
            },
            {
                type = "electric",
                decrease = 0,
                percent = 90
            },
            {
                type = "explosion",
                decrease = 100,
                percent = 90
            },
            {
                type = "fire",
                decrease = 25,
                percent = 80
            },
            {
                type = "impact",
                decrease = 50,
                percent = 90
            },
            {
                type = "laser",
                decrease = 0,
                percent = 80
            },
            {
                type = "physical",
                decrease = 25,
                percent = 80
            }
        }
    }
	
-- modify the main body size
    spidertronmk4_entity.graphics_set.animation.layers[1].scale = 1.40
	spidertronmk4_entity.graphics_set.animation.layers[1].hr_version.scale = 0.70
	
    spidertronmk4_entity.graphics_set.animation.layers[2].scale = 1.40
	spidertronmk4_entity.graphics_set.animation.layers[2].hr_version.scale = 0.70
	
	spidertronmk4_entity.graphics_set.animation.layers[3].scale = 1.40
	spidertronmk4_entity.graphics_set.animation.layers[3].hr_version.scale = 0.70

	spidertronmk4_entity.graphics_set.base_animation.layers[1].scale = 1.40
	spidertronmk4_entity.graphics_set.base_animation.layers[1].hr_version.scale = 0.70
	
	spidertronmk4_entity.graphics_set.base_animation.layers[2].scale = 1.40
    spidertronmk4_entity.graphics_set.base_animation.layers[2].hr_version.scale = 0.70

	spidertronmk4_entity.graphics_set.shadow_animation.scale = 1.40
    spidertronmk4_entity.graphics_set.shadow_animation.hr_version.scale = 0.70

	spidertronmk4_entity.graphics_set.shadow_base_animation.scale = 1.40
    spidertronmk4_entity.graphics_set.shadow_base_animation.hr_version.scale = 0.70
end

data:extend{
    spidertronmk4_entity
}