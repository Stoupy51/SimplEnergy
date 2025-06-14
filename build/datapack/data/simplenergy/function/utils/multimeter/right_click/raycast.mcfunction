
#> simplenergy:utils/multimeter/right_click/raycast
#
# @within	simplenergy:utils/multimeter/right_click/main
#			simplenergy:utils/multimeter/right_click/raycast
#

# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:utils/multimeter/right_click/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^0.2 run function simplenergy:utils/multimeter/right_click/raycast

