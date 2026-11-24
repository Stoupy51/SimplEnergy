
#> simplenergy:utils/battery_switcher/passive/main
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/battery_switcher/passive/pre_raycast
#			simplenergy:utils/battery_switcher/passive/main [ positioned ^ ^ ^.5 ]
#

# Stop case when raycast hits a solid block or an interaction
execute if function simplenergy:utils/ray_hit run function simplenergy:utils/battery_switcher/passive/stop_case

# Continue raycast until it hits a solid block, an interaction, or the max distance
execute if entity @s[distance=..5] unless function simplenergy:utils/ray_hit positioned ^ ^ ^.5 run function simplenergy:utils/battery_switcher/passive/main

