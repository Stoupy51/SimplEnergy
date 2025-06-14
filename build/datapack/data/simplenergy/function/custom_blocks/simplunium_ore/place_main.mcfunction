
#> simplenergy:custom_blocks/simplunium_ore/place_main
#
# @within	simplenergy:custom_blocks/place
#			simplenergy:calls/smart_ore_generation/veins/simplunium_ore
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function simplenergy:custom_blocks/simplunium_ore/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_polished_deepslate simplenergy.data 1
scoreboard players add #total_simplunium_ore simplenergy.data 1

