# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor smd.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness smd.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage smd.damage = @s smd.damage

# tellraw @s ["armor: ", {"score": {"name": "#10armor", "objective": "smd.damage"}, "color": "green"}]
# tellraw @s ["armor toughness: ", {"score": {"name": "#10toughness", "objective": "smd.damage"}, "color": "red"}]
# tellraw @s ["damage: ", {"score": {"name": "#damage", "objective": "smd.damage"}, "color": "green"}]

data modify storage smithed:core temp set from entity @s

# first armor and toughness
function smithed:core/impl/v0_0_1/entity/damage/armor/toughness

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "smd.damage"}, "color": "red"}]

# then protection
function smithed:core/impl/v0_0_1/entity/damage/armor/protection

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "smd.damage"}, "color": "green"}]

# finally resistance
function smithed:core/impl/v0_0_1/entity/damage/armor/resistance

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "smd.damage"}, "color": "red"}]

# tellraw @s ""

# go back to same scale
scoreboard players operation @s smd.damage /= 10 smd.const

# apply new damage
execute if score @s smd.damage matches 1.. run function smithed:core/impl/v0_0_1/entity/damage/apply
