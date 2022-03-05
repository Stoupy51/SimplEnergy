# rx97
#  adapted from TCC

##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction smd.damage 0

# First, lets grab the values
execute if data storage smithed:core temp.ActiveEffects[{Id:11b}] store result score #reduction smd.damage run data get storage smithed:core temp.ActiveEffects[{Id:11b}].Amplifier
execute if data storage smithed:core temp.ActiveEffects[{Id:11b}] run scoreboard players add #reduction smd.damage 1

# 1
scoreboard players operation #reduction smd.damage *= 20 smd.const

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "smd.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance smd.damage = @s smd.damage
scoreboard players operation #resistance smd.damage *= #reduction smd.damage
scoreboard players operation #resistance smd.damage /= 100 smd.const

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "smd.damage"}, "color": "blue"}]

scoreboard players operation @s smd.damage -= #resistance smd.damage
