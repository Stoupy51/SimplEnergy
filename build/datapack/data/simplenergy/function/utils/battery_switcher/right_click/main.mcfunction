
#> simplenergy:utils/battery_switcher/right_click/main
#
# @executed	as the player & at current position
#
# @within	simplenergy:utils/on_right_click
#

# Look at where player is looking at and stop when found a block
execute anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/battery_switcher/right_click/raycast

