
#> simplenergy:utils/battery_switcher/next_state
#
# @within	simplenergy:utils/battery_switcher/right_click/found_entity
#

scoreboard players add #state simplenergy.data 1
execute if score #state simplenergy.data matches 4 run scoreboard players set #state simplenergy.data 1

execute if score #state simplenergy.data matches 1 run tag @s add energy.send
execute if score #state simplenergy.data matches 1 run tag @s add energy.receive

execute if score #state simplenergy.data matches 2 run tag @s remove energy.receive
execute if score #state simplenergy.data matches 2 run tag @s add energy.send

execute if score #state simplenergy.data matches 3 run tag @s add energy.receive
execute if score #state simplenergy.data matches 3 run tag @s remove energy.send

