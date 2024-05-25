
#> simplenergy:custom_blocks/advanced_cable/place_main
#
# @within	???
#

setblock ~ ~ ~ minecraft:player_head
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/advanced_cable/place_secondary

