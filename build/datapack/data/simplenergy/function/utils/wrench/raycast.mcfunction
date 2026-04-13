
#> simplenergy:utils/wrench/raycast
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/wrench/right_click [ anchored eyes & positioned ^ ^ ^.2 ]
#			simplenergy:utils/wrench/raycast [ positioned ^ ^ ^.2 ]
#

# Stop case when raycast hits a block that is from wrench_raycast tag
execute if block ~ ~ ~ #simplenergy:solid align xyz run function simplenergy:utils/wrench/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if score #raycast simplenergy.data matches 0 if entity @s[distance=..5] unless block ~ ~ ~ #simplenergy:solid positioned ^ ^ ^.2 run function simplenergy:utils/wrench/raycast

