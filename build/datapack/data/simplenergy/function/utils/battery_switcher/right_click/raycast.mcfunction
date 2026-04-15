
#> simplenergy:utils/battery_switcher/right_click/raycast
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/battery_switcher/right_click/main [ anchored eyes & positioned ^ ^ ^.2 ]
#			simplenergy:utils/battery_switcher/right_click/raycast [ positioned ^ ^ ^.2 ]
#

# Stop case when raycast hits a block that is solid
execute if block ~ ~ ~ #simplenergy:solid run function simplenergy:utils/battery_switcher/right_click/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] unless block ~ ~ ~ #simplenergy:solid positioned ^ ^ ^.2 run function simplenergy:utils/battery_switcher/right_click/raycast

