
#> simplenergy:custom_blocks/electric_furnace/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
function simplenergy:custom_blocks/get_rotation
execute if score #rotation simplenergy.data matches 1 run setblock ~ ~ ~ minecraft:furnace[facing=north]{"CustomName": "\"Electric Furnace\""}
execute if score #rotation simplenergy.data matches 2 run setblock ~ ~ ~ minecraft:furnace[facing=east]{"CustomName": "\"Electric Furnace\""}
execute if score #rotation simplenergy.data matches 3 run setblock ~ ~ ~ minecraft:furnace[facing=south]{"CustomName": "\"Electric Furnace\""}
execute if score #rotation simplenergy.data matches 4 run setblock ~ ~ ~ minecraft:furnace[facing=west]{"CustomName": "\"Electric Furnace\""}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/electric_furnace/place_secondary
tag @s remove simplenergy.placer

