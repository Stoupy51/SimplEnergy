
#> simplenergy:custom_blocks/elite_battery/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ minecraft:iron_block
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/elite_battery/place_secondary
tag @s remove simplenergy.placer

