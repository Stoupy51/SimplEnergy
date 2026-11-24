
#> simplenergy:utils/multimeter/right_click/raycast
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/multimeter/right_click/main [ anchored eyes & positioned ^ ^ ^.2 ]
#			simplenergy:utils/multimeter/right_click/raycast [ positioned ^ ^ ^.2 ]
#

# Stop case when raycast hits a solid block or an interaction
execute if function simplenergy:utils/ray_hit run function simplenergy:utils/multimeter/right_click/stop_case

# Continue raycast until it hits a solid block, an interaction, or the max distance
execute if entity @s[distance=..5] unless function simplenergy:utils/ray_hit positioned ^ ^ ^.2 run function simplenergy:utils/multimeter/right_click/raycast

