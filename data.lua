require("prototypes.gun")
require("prototypes.equipment_grid")
require("prototypes.item")
require("prototypes.spider_leg")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.entity")
-- changes for vanilla
require("prototypes.vanilla")

if mods["Krastorio2"] then
    -- compatible with version 1.0.3 of krastorio2
    require("prototypes.compatibility_krastorio2")
end