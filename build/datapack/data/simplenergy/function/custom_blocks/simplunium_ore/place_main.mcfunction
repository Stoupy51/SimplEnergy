
#> simplenergy:custom_blocks/simplunium_ore/place_main
#
# @within	simplenergy:custom_blocks/place
#

setblock ~ ~ ~ minecraft:polished_deepslate[]
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/simplunium_ore/place_secondary

