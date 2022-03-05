# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor smd.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness smd.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage smd.damage = @s smd.damage

data modify storage smithed:core temp set from entity @s

# first armor and toughness
function smithed:core/impl/v0_0_1/entity/damage/armor/toughness

# then protection
function smithed:core/impl/v0_0_1/entity/damage/armor/protection
function smithed:core/impl/v0_0_1/entity/damage/armor/proj_protection

# finally resistance
function smithed:core/impl/v0_0_1/entity/damage/armor/resistance

# go back to same scale
scoreboard players operation @s smd.damage /= 10 smd.const

# apply new damage
execute if score @s smd.damage matches 1.. run function smithed:core/impl/v0_0_1/entity/damage/apply
