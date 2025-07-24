
#> simplenergy:custom_blocks/_groups/minecraft_daylight_detector
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_solar_panel simplenergy.data matches 1.. if entity @s[tag=simplenergy.solar_panel] run function simplenergy:custom_blocks/solar_panel/destroy

