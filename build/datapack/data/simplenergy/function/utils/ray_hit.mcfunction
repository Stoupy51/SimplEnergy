
#> simplenergy:utils/ray_hit
#
# @executed	align xyz
#
# @within	simplenergy:utils/wrench/raycast [ align xyz ]
#			simplenergy:utils/wrench/raycast [ positioned ^ ^ ^.2 ]
#			simplenergy:utils/multimeter/right_click/raycast
#			simplenergy:utils/multimeter/right_click/raycast [ positioned ^ ^ ^.2 ]
#			simplenergy:utils/multimeter/passive/main
#			simplenergy:utils/multimeter/passive/main [ positioned ^ ^ ^.5 ]
#			string in simplenergy:utils/multimeter/passive/found_entity
#			simplenergy:utils/battery_switcher/right_click/raycast
#			simplenergy:utils/battery_switcher/right_click/raycast [ positioned ^ ^ ^.2 ]
#			simplenergy:utils/battery_switcher/passive/main
#			simplenergy:utils/battery_switcher/passive/main [ positioned ^ ^ ^.5 ]
#			string in simplenergy:utils/battery_switcher/passive/found_entity
#

execute if block ~ ~ ~ #simplenergy:solid run return 1
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=interaction,distance=..0.01] run return 1
return fail

