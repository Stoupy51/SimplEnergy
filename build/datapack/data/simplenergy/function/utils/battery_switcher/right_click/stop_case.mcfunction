
#> simplenergy:utils/battery_switcher/right_click/stop_case
#
# @within	simplenergy:utils/battery_switcher/right_click/raycast
#

tag @s add simplenergy.temp
execute as @e[tag=simplenergy.battery_switcher,scores={energy.max_storage=1..},limit=1,sort=nearest,distance=..1.5] run function simplenergy:utils/battery_switcher/right_click/found_entity
tag @s remove simplenergy.temp

