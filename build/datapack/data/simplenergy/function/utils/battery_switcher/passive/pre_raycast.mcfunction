
#> simplenergy:utils/battery_switcher/passive/pre_raycast
#
# @within	simplenergy:utils/passive_offhand
#

# If no battery found (no state), set custom model data to default
scoreboard players set #state simplenergy.data 0
function simplenergy:utils/battery_switcher/passive/main
execute if score #state simplenergy.data matches 0 run item modify entity @s weapon.offhand simplenergy:battery_switcher/default

