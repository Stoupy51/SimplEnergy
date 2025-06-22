
#> simplenergy:custom_blocks/advanced_battery/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:gold_block
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/advanced_battery/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_gold_block simplenergy.data 1
scoreboard players add #total_advanced_battery simplenergy.data 1

