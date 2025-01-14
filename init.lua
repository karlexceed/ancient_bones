ancient_bones = {}


ancient_bones.modpath = core.get_modpath("ancient_bones")
dofile(ancient_bones.modpath .. "/settings.lua")
dofile(ancient_bones.modpath .. "/ancient_bones.lua")

dofile(ancient_bones.modpath .. "/loot.lua")
dofile(ancient_bones.modpath .. "/mapgen.lua")
