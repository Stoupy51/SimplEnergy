
#> simplenergy:custom_blocks/deepslate_simplunium_ore/place_main
#
# @within	simplenergy:custom_blocks/place
#			simplenergy:calls/smart_ore_generation/veins/deepslate_simplunium_ore
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/deepslate_simplunium_ore/place_secondary
tag @s remove simplenergy.placer

