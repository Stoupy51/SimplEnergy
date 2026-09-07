
#> simplenergy:custom_blocks/elevator/found_elevator
#
# @executed	at @e[tag=simplenergy.elevator,distance=..1,limit=1]
#
# @within	simplenergy:custom_blocks/elevator/go_up [ at @e[tag=simplenergy.elevator,distance=..1,limit=1] ]
#			simplenergy:custom_blocks/elevator/go_down [ at @e[tag=simplenergy.elevator,distance=..1,limit=1] ]
#

# Teleport the player above the elevator, playsound, and reset the cooldown
tp @s ~ ~0.6 ~
playsound simplenergy:elevator block @s
scoreboard players operation @s simplenergy.elevator_time = #elevator_time simplenergy.data

