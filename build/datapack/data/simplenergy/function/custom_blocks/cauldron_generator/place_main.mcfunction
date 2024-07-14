
#> simplenergy:custom_blocks/cauldron_generator/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:cauldron
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/cauldron_generator/place_secondary
tag @s remove simplenergy.placer

