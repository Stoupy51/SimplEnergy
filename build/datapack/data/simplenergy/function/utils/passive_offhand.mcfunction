
#> simplenergy:utils/passive_offhand
#
# @executed	as @a[tag=!...] & at @s
#
# @within	simplenergy:v2.3.0/tick_2 [ as @a[tag=!...] & at @s ]
#

execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"multimeter":true}}] anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/multimeter/passive/main
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"battery_switcher":true}}] anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/battery_switcher/passive/pre_raycast

