
#> simplenergy:custom_blocks/redstone_generator/stop
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:custom_blocks/redstone_generator/second
#

item replace block ~ ~ ~ container.1 with cobblestone[item_model="simplenergy:gui/redstone_generator",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
data modify entity @s item.components."minecraft:item_model" set value "simplenergy:redstone_generator"

