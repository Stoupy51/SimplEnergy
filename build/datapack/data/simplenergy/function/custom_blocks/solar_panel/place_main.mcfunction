
#> simplenergy:custom_blocks/solar_panel/place_main
#
# @within	simplenergy:custom_blocks/place
#

setblock ~ ~ ~ minecraft:daylight_detector[]
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/solar_panel/place_secondary

