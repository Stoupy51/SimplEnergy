
#> simplenergy:custom_blocks/heat_generator/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:iron_block
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/heat_generator/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_iron_block simplenergy.data 1
scoreboard players add #total_heat_generator simplenergy.data 1

