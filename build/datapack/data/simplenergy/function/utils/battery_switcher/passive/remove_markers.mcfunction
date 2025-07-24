
#> simplenergy:utils/battery_switcher/passive/remove_markers
#
# @executed	as @n[tag=simplenergy.battery_switcher,scores={energy.max_storage=1..},distance=..1.5] & at @s & align xyz & positioned ~.5 ~.3 ~.5
#
# @within	simplenergy:utils/battery_switcher/passive/found_entity 1t replace
#			simplenergy:utils/battery_switcher/passive/remove_markers 1t replace
#

# Score initialization and kill egg entities alive for more than 5 ticks
scoreboard players set #success simplenergy.data 0
kill @e[type=egg,tag=simplenergy.battery_switcher_marker,scores={simplenergy.private=5..}]

# Increase private score by 1
execute store success score #success simplenergy.data run scoreboard players add @e[type=egg,tag=simplenergy.battery_switcher_marker] simplenergy.private 1

# Run again schedule if there are remaining eggs
execute if score #success simplenergy.data matches 1 run schedule function simplenergy:utils/battery_switcher/passive/remove_markers 1t replace

