
#> simplenergy:utils/multimeter/passive/stop_case
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/multimeter/passive/main
#

# Execute at the block found the function
tag @s add simplenergy.temp
execute as @n[scores={energy.max_storage=1..},distance=..1.5] at @s align xyz run function simplenergy:utils/multimeter/passive/found_entity
tag @s remove simplenergy.temp

