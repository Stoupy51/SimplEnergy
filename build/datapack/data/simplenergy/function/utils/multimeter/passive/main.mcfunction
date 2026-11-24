
#> simplenergy:utils/multimeter/passive/main
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/passive_offhand [ anchored eyes & positioned ^ ^ ^.2 ]
#			simplenergy:utils/multimeter/passive/main [ positioned ^ ^ ^.5 ]
#

# Stop case when raycast hits a solid block or an interaction
execute if function simplenergy:utils/ray_hit run function simplenergy:utils/multimeter/passive/stop_case

# Continue raycast until it hits a solid block, an interaction, or the max distance
execute if entity @s[distance=..5] unless function simplenergy:utils/ray_hit positioned ^ ^ ^.5 run function simplenergy:utils/multimeter/passive/main

