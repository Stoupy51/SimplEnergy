
#> simplenergy:custom_blocks/electric_brewing_stand/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:brewing_stand{"CustomName": {"translate": "simplenergy.electric_brewing_stand"}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function simplenergy:custom_blocks/electric_brewing_stand/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_brewing_stand simplenergy.data 1
scoreboard players add #total_electric_brewing_stand simplenergy.data 1

