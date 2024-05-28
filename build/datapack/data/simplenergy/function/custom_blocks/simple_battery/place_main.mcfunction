
#> simplenergy:custom_blocks/simple_battery/place_main
#
# @within	simplenergy:custom_blocks/place
#

setblock ~ ~ ~ minecraft:copper_block[]
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/simple_battery/place_secondary

