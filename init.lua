bones_loot = {}

bones_loot.BONES_MIN = 0 -- not necessarily in a single dungeon
bones_loot.BONES_MAX = 2
bones_loot.STACKS_PER_BONES_MAX = 8

dofile(minetest.get_modpath("bones_loot") .. "/ancient_bones.lua")

dofile(minetest.get_modpath("bones_loot") .. "/loot.lua")
dofile(minetest.get_modpath("bones_loot") .. "/mapgen.lua")
