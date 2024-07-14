
#> simplenergy:custom_blocks/pulverizer/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
function simplenergy:custom_blocks/get_rotation
execute if score #rotation simplenergy.data matches 1 run setblock ~ ~ ~ minecraft:barrel[facing=north]{"CustomName": "\"Pulverizer\""}
execute if score #rotation simplenergy.data matches 2 run setblock ~ ~ ~ minecraft:barrel[facing=east]{"CustomName": "\"Pulverizer\""}
execute if score #rotation simplenergy.data matches 3 run setblock ~ ~ ~ minecraft:barrel[facing=south]{"CustomName": "\"Pulverizer\""}
execute if score #rotation simplenergy.data matches 4 run setblock ~ ~ ~ minecraft:barrel[facing=west]{"CustomName": "\"Pulverizer\""}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/pulverizer/place_secondary
tag @s remove simplenergy.placer

