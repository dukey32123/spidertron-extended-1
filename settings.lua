data:extend({
    -- vanilla sizes
	{
		type = "bool-setting",
		name = "vanilla-spidertron-size",
		setting_type = "startup",
		default_value = false,
		order = "a1"
	},
    -- to disable spidertronmk2
    {
		type = "bool-setting",
		name = "disable-spidertronmk2",
		setting_type = "startup",
		default_value = false,
		order = "a20"
	},
    -- grid sizes for mk2
    {
		type = "int-setting",
		name = "spidertronmk2-width",
		setting_type = "startup",
        minimum_value = 10,
        default_value = 20,
		order = "a21"
	},
    {
		type = "int-setting",
		name = "spidertronmk2-height",
		setting_type = "startup",
        minimum_value = 6,
        default_value = 8,
		order = "a22"
	},
    -- inventory size for mk2
    {
		type = "int-setting",
		name = "spidertronmk2-invsize",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 100,
		order = "a23"
	},
    -- hp for mk2
    {
		type = "int-setting",
		name = "spidertronmk2-hp",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 5000,
		order = "a24"
	},
    -- to disable spidertronmk3
    {
		type = "bool-setting",
		name = "disable-spidertronmk3",
		setting_type = "startup",
		default_value = false,
		order = "a30"
	},
	-- to disable spidertronmk4
	{
		type = "bool-setting",
		name = "disable-spidertronmk4",
		setting_type = "startup",
		default_value = false,
		order = "a30"
	},
    -- grid sizes for mk3
    {
		type = "int-setting",
		name = "spidertronmk3-width",
		setting_type = "startup",
        minimum_value = 10,
        default_value = 30,
		order = "a32"
	},
    {
		type = "int-setting",
		name = "spidertronmk3-height",
		setting_type = "startup",
        minimum_value = 6,
        default_value = 10,
		order = "a33"
	},
    -- inventory size for mk3
    {
		type = "int-setting",
		name = "spidertronmk3-invsize",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 120,
		order = "a34"
	},
    -- hp for mk3
    {
		type = "int-setting",
		name = "spidertronmk3-hp",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 8000,
		order = "a35"
	},
    {
		type = "bool-setting",
		name = "disable-health-regenmk3",
		setting_type = "startup",
		default_value = false,
		order = "a36"
	},
	-- grid sizes for mk4
	{
		type = "int-setting",
		name = "spidertronmk4-width",
		setting_type = "startup",
		minimum_value = 10,
		default_value = 40,
		order = "a32"
	},
	{
		type = "int-setting",
		name = "spidertronmk4-height",
		setting_type = "startup",
		minimum_value = 6,
		default_value = 15,
		order = "a33"
	},
	-- inventory size for mk4
	{
		type = "int-setting",
		name = "spidertronmk4-invsize",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 180,
		order = "a34"
	},
	-- hp for mk4
	{
		type = "int-setting",
		name = "spidertronmk4-hp",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 15000,
		order = "a35"
	},
	{
		type = "bool-setting",
		name = "disable-health-regenmk4",
		setting_type = "startup",
		default_value = false,
		order = "a36"
	},
    -- to disable spidertron builder
    {
		type = "bool-setting",
		name = "disable-spidertron-builder",
		setting_type = "startup",
		default_value = false,
		order = "b10"
	},
	-- grid sizes for spider-builder
    {
		type = "int-setting",
		name = "spidertron-builder-width",
		setting_type = "startup",
        minimum_value = 10,
        default_value = 16,
		order = "b11"
	},
    {
		type = "int-setting",
		name = "spidertron-builder-height",
		setting_type = "startup",
        minimum_value = 6,
        default_value = 8,
		order = "b12"
	},
    -- inventory size for spidertron-builder
    {
		type = "int-setting",
		name = "spidertron-builder-invsize",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 240,
		order = "b13"
	},
    -- hp for spidertron-builder
    {
		type = "int-setting",
		name = "spidertron-builder-hp",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 3000,
		order = "b14"
	},
    -- healing beam for spidertron-builder
    {
		type = "int-setting",
		name = "spidertron-builder-healing-beam-ammount",
		setting_type = "startup",
        minimum_value = 1,
        default_value = 10,
		order = "b15"
	},
    {
		type = "bool-setting",
		name = "disable-spidertron-builder-reaper-beam",
		setting_type = "startup",
        default_value = false,
		order = "b16"
	},
    -- immolator settings
    {
		type = "bool-setting",
		name = "disable-immolator",
		setting_type = "startup",
		default_value = false,
		order = "c0"
	},
    {
		type = "int-setting",
		name = "immolator-width",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 10,
		order = "c1"
	},
    {
		type = "int-setting",
		name = "immolator-height",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 10,
		order = "c12"
	},
    {
		type = "int-setting",
		name = "immolator-invsize",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 80,
		order = "c13"
	},
    {
		type = "int-setting",
		name = "immolator-hp",
        setting_type = "startup",
        minimum_value = 1,
        default_value = 3000,
		order = "c14"
	},
    {
		type = "bool-setting",
		name = "disable-immolator-fire",
        setting_type = "startup",
        default_value = false,
		order = "c15"
	},
    -- bobs equipment
    {
		type = "bool-setting",
		name = "disable-bobs-equipment",
		setting_type = "startup",
		default_value = false,
		order = "m0"
	},
    -- disable bobs equipment on vanilla
    {
		type = "bool-setting",
		name = "disable-bobs-vehicle-equipment-vanilla",
		setting_type = "startup",
		default_value = false,
		order = "m01"
	},
    -- someday i'm gonna make this into some kind
    -- of selector to select instead of several thingies
    -- bobs equipment + vehicle equipment
    {
		type = "bool-setting",
		name = "enable-bobs-all-equipment-spidertrons",
		setting_type = "startup",
		default_value = false,
		order = "m02"
	},
    {
		type = "bool-setting",
		name = "disable-krastorio-spidertron-burner",
		setting_type = "startup",
		default_value = false,
		order = "m1"
	}
})