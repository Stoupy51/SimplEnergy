
#> simplenergy:utils/wrench/raycast
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/wrench/right_click [ anchored eyes & positioned ^ ^ ^.2 ]
#			simplenergy:utils/wrench/raycast [ positioned ^ ^ ^.2 ]
#

# Stop case when raycast hits a solid block or an interaction
execute if function simplenergy:utils/ray_hit align xyz run function simplenergy:utils/wrench/stop_case

# Continue raycast until it hits a solid block, an interaction, or the max distance
execute if score #raycast simplenergy.data matches 0 if entity @s[distance=..5] unless function simplenergy:utils/ray_hit positioned ^ ^ ^.2 run function simplenergy:utils/wrench/raycast

