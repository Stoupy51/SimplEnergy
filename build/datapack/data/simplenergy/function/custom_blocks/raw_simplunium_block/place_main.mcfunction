
#> simplenergy:custom_blocks/raw_simplunium_block/place_main
#
# @within	simplenergy:custom_blocks/place
#

setblock ~ ~ ~ minecraft:raw_iron_block[]
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/raw_simplunium_block/place_secondary

