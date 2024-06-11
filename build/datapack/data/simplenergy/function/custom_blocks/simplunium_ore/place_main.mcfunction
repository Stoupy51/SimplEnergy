
#> simplenergy:custom_blocks/simplunium_ore/place_main
#
# @within	simplenergy:custom_blocks/place
#			simplenergy:calls/smart_ore_generation/veins/simplunium_ore
#

tag @s add simplenergy.placer
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/simplunium_ore/place_secondary
tag @s remove simplenergy.placer

