
#> simplenergy:custom_blocks/electric_brewing_stand/place_main
#
# @within	simplenergy:custom_blocks/place
#

setblock ~ ~ ~ minecraft:brewing_stand[]
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/electric_brewing_stand/place_secondary

