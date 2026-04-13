
#> simplenergy:custom_blocks/cauldron_generator/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:cauldron
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function simplenergy:custom_blocks/cauldron_generator/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_cauldron simplenergy.data 1
scoreboard players add #total_cauldron_generator simplenergy.data 1

