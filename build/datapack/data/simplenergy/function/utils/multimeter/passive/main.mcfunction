
#> simplenergy:utils/multimeter/passive/main
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/passive_offhand [ anchored eyes & positioned ^ ^ ^.2 ]
#			simplenergy:utils/multimeter/passive/main [ positioned ^ ^ ^.5 ]
#

# Stop case when raycast hits a block that is solid
execute if block ~ ~ ~ #simplenergy:solid run function simplenergy:utils/multimeter/passive/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] unless block ~ ~ ~ #simplenergy:solid positioned ^ ^ ^.5 run function simplenergy:utils/multimeter/passive/main

