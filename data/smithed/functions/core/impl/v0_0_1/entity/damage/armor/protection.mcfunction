# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 4 × level ) )%
##################################

execute store result score #helm smd.damage run data get storage smithed:core temp.Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #chest smd.damage run data get storage smithed:core temp.Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #legs smd.damage run data get storage smithed:core temp.Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #boots smd.damage run data get storage smithed:core temp.Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction smd.damage = #helm smd.damage
scoreboard players operation #reduction smd.damage += #chest smd.damage
scoreboard players operation #reduction smd.damage += #legs smd.damage
scoreboard players operation #reduction smd.damage += #boots smd.damage

# tellraw @s ["#level: ", {"score": {"name": "#reduction", "objective": "smd.damage"}, "color": "blue"}]

# 1
scoreboard players operation #reduction smd.damage *= 4 smd.const

# 2
scoreboard players operation #reduction smd.damage < 80 smd.const

# tellraw @s ["#reduction %: ", {"score": {"name": "#reduction", "objective": "smd.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #protection smd.damage = @s smd.damage
scoreboard players operation #protection smd.damage *= #reduction smd.damage
scoreboard players operation #protection smd.damage /= 100 smd.const


# tellraw @s ["#protection: ", {"score": {"name": "#protection", "objective": "smd.damage"}, "color": "blue"}]

scoreboard players operation @s smd.damage -= #protection smd.damage
