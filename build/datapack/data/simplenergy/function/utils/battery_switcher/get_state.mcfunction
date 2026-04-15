
#> simplenergy:utils/battery_switcher/get_state
#
# @executed	as @n[tag=simplenergy.battery_switcher,scores={energy.max_storage=1..},distance=..1.5]
#
# @within	simplenergy:utils/battery_switcher/right_click/found_entity
#			simplenergy:utils/battery_switcher/passive/found_entity
#

scoreboard players set #state simplenergy.data 0
execute if score #state simplenergy.data matches 0 if entity @s[tag=energy.send,tag=energy.receive] run scoreboard players set #state simplenergy.data 1
execute if score #state simplenergy.data matches 0 if entity @s[tag=energy.send] run scoreboard players set #state simplenergy.data 2
execute if score #state simplenergy.data matches 0 if entity @s[tag=energy.receive] run scoreboard players set #state simplenergy.data 3

