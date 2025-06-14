
#> simplenergy:custom_blocks/raw_simplunium_block/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:raw_iron_block
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function simplenergy:custom_blocks/raw_simplunium_block/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_raw_iron_block simplenergy.data 1
scoreboard players add #total_raw_simplunium_block simplenergy.data 1

