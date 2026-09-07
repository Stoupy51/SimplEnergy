
#> simplenergy:custom_blocks/wind_turbine/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
function simplenergy:custom_blocks/get_rotation
setblock ~ ~ ~ air strict
execute if score #rotation simplenergy.data matches 1 run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north]
execute if score #rotation simplenergy.data matches 2 run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east]
execute if score #rotation simplenergy.data matches 3 run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south]
execute if score #rotation simplenergy.data matches 4 run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west]
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function simplenergy:custom_blocks/wind_turbine/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_iron_trapdoor simplenergy.data 1
scoreboard players add #total_wind_turbine simplenergy.data 1

