
#> simplenergy:custom_blocks/elevator/go_up
#
# @executed	positioned ~ ~2 ~
#
# @within	simplenergy:custom_blocks/elevator/as_player [ positioned ~ ~2 ~ ]
#			simplenergy:custom_blocks/elevator/go_up [ positioned ~ ~1 ~ ]
#

# Find an elevator block in the direction of the player
execute at @e[tag=simplenergy.elevator,distance=..1,limit=1] run return run function simplenergy:custom_blocks/elevator/found_elevator
execute if entity @s[distance=..72] positioned ~ ~1 ~ run function simplenergy:custom_blocks/elevator/go_up

