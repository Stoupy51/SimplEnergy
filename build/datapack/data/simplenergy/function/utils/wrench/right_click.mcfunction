
#> simplenergy:utils/wrench/right_click
#
# @within	simplenergy:utils/on_right_click
#

# Look at where player is looking at and stop when found a block
scoreboard players set #raycast simplenergy.data 0
execute anchored eyes positioned ^ ^ ^0.2 run function simplenergy:utils/wrench/raycast
scoreboard players reset #raycast simplenergy.data

