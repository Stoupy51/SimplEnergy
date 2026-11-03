
#> simplenergy:custom_blocks/electric_smelter/follow_host
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/electric_smelter/place_secondary
#			simplenergy:custom_blocks/electric_smelter/second
#

execute if block ~ ~ ~ minecraft:furnace[lit=false] unless items entity @s contents *[custom_model_data={strings:["lit=false"]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["lit=false"]}
execute if block ~ ~ ~ minecraft:furnace[lit=true] unless items entity @s contents *[custom_model_data={strings:["lit=true"]}] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["lit=true"]}

