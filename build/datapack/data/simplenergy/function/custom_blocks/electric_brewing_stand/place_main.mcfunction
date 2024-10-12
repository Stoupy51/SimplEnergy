
#> simplenergy:custom_blocks/electric_brewing_stand/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:brewing_stand{"CustomName": "\"Electric Brewing Stand\""}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/electric_brewing_stand/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_brewing_stand simplenergy.data 1
scoreboard players add #total_electric_brewing_stand simplenergy.data 1

data modify entity @s Rotation[0] set value 180.0f
data modify entity @s transformation.scale[1] set value 1.025f
data modify entity @s transformation.translation[1] set value 0.01f

