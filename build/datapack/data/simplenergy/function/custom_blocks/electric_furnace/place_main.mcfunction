
#> simplenergy:custom_blocks/electric_furnace/place_main
#
# @within	simplenergy:custom_blocks/place
#

tag @s add simplenergy.placer
function simplenergy:custom_blocks/get_rotation
execute if predicate simplenergy:facing/north run setblock ~ ~ ~ minecraft:furnace[facing=north,]
execute if predicate simplenergy:facing/east run setblock ~ ~ ~ minecraft:furnace[facing=east,]
execute if predicate simplenergy:facing/south run setblock ~ ~ ~ minecraft:furnace[facing=south,]
execute if predicate simplenergy:facing/west run setblock ~ ~ ~ minecraft:furnace[facing=west,]
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/electric_furnace/place_secondary
tag @s remove simplenergy.placer

