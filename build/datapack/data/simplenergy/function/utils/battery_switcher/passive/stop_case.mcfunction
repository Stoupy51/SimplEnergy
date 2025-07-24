
#> simplenergy:utils/battery_switcher/passive/stop_case
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/battery_switcher/passive/main
#

# Execute at the block found the function
tag @s add simplenergy.temp
execute as @n[tag=simplenergy.battery_switcher,scores={energy.max_storage=1..},distance=..1.5] at @s align xyz positioned ~.5 ~.3 ~.5 run function simplenergy:utils/battery_switcher/passive/found_entity
tag @s remove simplenergy.temp

