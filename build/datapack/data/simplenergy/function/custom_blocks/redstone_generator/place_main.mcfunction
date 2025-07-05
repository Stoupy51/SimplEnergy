
#> simplenergy:custom_blocks/redstone_generator/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
function simplenergy:custom_blocks/get_rotation
setblock ~ ~ ~ air
execute if score #rotation simplenergy.data matches 1 run setblock ~ ~ ~ minecraft:furnace[facing=north]{"CustomName": {"translate": "simplenergy.redstone_generator","italic": false,"color": "white"}}

execute if score #rotation simplenergy.data matches 2 run setblock ~ ~ ~ minecraft:furnace[facing=east]{"CustomName": {"translate": "simplenergy.redstone_generator","italic": false,"color": "white"}}

execute if score #rotation simplenergy.data matches 3 run setblock ~ ~ ~ minecraft:furnace[facing=south]{"CustomName": {"translate": "simplenergy.redstone_generator","italic": false,"color": "white"}}

execute if score #rotation simplenergy.data matches 4 run setblock ~ ~ ~ minecraft:furnace[facing=west]{"CustomName": {"translate": "simplenergy.redstone_generator","italic": false,"color": "white"}}

execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/redstone_generator/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_furnace simplenergy.data 1
scoreboard players add #total_redstone_generator simplenergy.data 1

