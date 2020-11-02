require "util"

local table_deepcopy = util.table.deepcopy

local iconsmk2 = {
    {
        icon = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_mk2_item.png", 
        icon_size = 64, 
        icon_mipmaps = 4
    }
}
local iconsmk3 = {
    {
        icon = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_mk3_item.png", 
        icon_size = 64, 
        icon_mipmaps = 4
    }
}
local iconsmk4 = {
    {
        icon = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_mk4_item.png", 
        icon_size = 64, 
        icon_mipmaps = 4
    }
}
local icon_sp_builder = {
    {
        icon = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_builder_item.png",
        icon_size = 64, 
        icon_mipmaps = 4
    }
}
local immolator = {
    {
        icon = "__spidertron-extended-dukey-edition__/icons/spidertron_extended_immolator_item.png", 
        icon_size = 64, 
        icon_mipmaps = 4
    }
}

-- mk2 item
if not settings.startup["disable-spidertronmk2"].value then
    local spidertronmk2_item = table_deepcopy(data.raw["item-with-entity-data"]["spidertron"])
    spidertronmk2_item.name = "spidertronmk2"
    spidertronmk2_item.icon = nil
    spidertronmk2_item.icon_size = nil
    spidertronmk2_item.icon_mipmaps = nil
    spidertronmk2_item.icons = iconsmk2
    spidertronmk2_item.order = "b[personal-transport]-c[spidertron]-ab[spidertronmk2]"
    spidertronmk2_item.place_result = "spidertronmk2"
    data:extend{
        spidertronmk2_item
    }
end

-- mk3 item
if not settings.startup["disable-spidertronmk3"].value then
    local spidertronmk3_item = table_deepcopy(data.raw["item-with-entity-data"]["spidertron"])
    spidertronmk3_item.name = "spidertronmk3"
    spidertronmk3_item.icon = nil
    spidertronmk3_item.icon_size = nil
    spidertronmk3_item.icon_mipmaps = nil
    spidertronmk3_item.icons = iconsmk3
    spidertronmk3_item.order = "b[personal-transport]-c[spidertron]-ab[spidertronmk3]"
    spidertronmk3_item.place_result = "spidertronmk3"
    data:extend{
        spidertronmk3_item
    }
end
  
-- mk4 item
if not settings.startup["disable-spidertronmk4"].value then
    local spidertronmk4_item = table_deepcopy(data.raw["item-with-entity-data"]["spidertron"])
    spidertronmk4_item.name = "spidertronmk4"
    spidertronmk4_item.icon = nil
    spidertronmk4_item.icon_size = nil
    spidertronmk4_item.icon_mipmaps = nil
    spidertronmk4_item.icons = iconsmk4
    spidertronmk4_item.order = "b[personal-transport]-c[spidertron]-ab[spidertronmk4]"
    spidertronmk4_item.place_result = "spidertronmk4"
    data:extend{
        spidertronmk4_item
    }
end

-- builder item
if not settings.startup["disable-spidertron-builder"].value then
    local spidertron_builder_item = table_deepcopy(data.raw["item-with-entity-data"]["spidertron"])
    spidertron_builder_item.name = "spidertron-builder"
    spidertron_builder_item.icon = nil
    spidertron_builder_item.icon_size = nil
    spidertron_builder_item.icon_mipmaps = nil
    spidertron_builder_item.icons = icon_sp_builder
    spidertron_builder_item.order = "b[personal-transport]-c[spidertron]-ab[spidertron_builder]"
    spidertron_builder_item.place_result = "spidertron-builder"
    data:extend{
        spidertron_builder_item
    }
end

-- immolator item
if not settings.startup["disable-immolator"].value then
    local immolator_item = table_deepcopy(data.raw["item-with-entity-data"]["spidertron"])
    immolator_item.name = "immolator"
    immolator_item.icon = nil
    immolator_item.icon_size = nil
    immolator_item.icon_mipmaps = nil
    immolator_item.icons = immolator
    immolator_item.order = "b[personal-transport]-c[spidertron]-ab[immolator]"
    immolator_item.place_result = "immolator"
    data:extend{
        immolator_item
    }
end