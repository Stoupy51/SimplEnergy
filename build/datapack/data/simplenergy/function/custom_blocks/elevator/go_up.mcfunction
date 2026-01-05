
#> simplenergy:custom_blocks/elevator/go_up
#
# @executed	positioned ~ ~2 ~
#
# @within	simplenergy:custom_blocks/elevator/as_player [ positioned ~ ~2 ~ ]
#			simplenergy:custom_blocks/elevator/go_up [ positioned ~ ~1 ~ ]
#

# Find an elevator block in the direction of the player
execute at @e[tag=simplenergy.elevator,distance=..1,limit=1] store success score #success simplenergy.data run tp @s ~ ~0.6 ~
execute if score #success simplenergy.data matches 1 run playsound simplenergy:elevator block @s
execute if score #success simplenergy.data matches 1 run scoreboard players operation @s simplenergy.elevator_time = #elevator_time simplenergy.data
execute if score #success simplenergy.data matches 0 if entity @s[distance=..72] positioned ~ ~1 ~ run function simplenergy:custom_blocks/elevator/go_up

