
#> simplenergy:utils/battery_switcher/passive/pre_raycast
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/passive_offhand [ anchored eyes & positioned ^ ^ ^.2 ]
#

# If no battery found (no state), set custom model data to default
scoreboard players set #state simplenergy.data 0
function simplenergy:utils/battery_switcher/passive/main
execute if score #state simplenergy.data matches 0 run item modify entity @s weapon.offhand simplenergy:battery_switcher/default

