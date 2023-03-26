
# Timers
scoreboard players add #second simplenergy.data 1
scoreboard players add #second_5 simplenergy.data 1
scoreboard players add #tick_2 simplenergy.data 1
execute if score #tick_2 simplenergy.data matches 3.. run function simplenergy:tick_2
execute if score #second simplenergy.data matches 20.. run function simplenergy:tick_second
execute if score #second_5 simplenergy.data matches 90.. run function simplenergy:tick_second_5

# Tick entities
execute as @e[type=item_display,tag=simplenergy.tick_entities,sort=random] at @s run function simplenergy:utils/tick_entities

# Check for new items
execute as @e[type=item,tag=!simplenergy.checked] at @s run function simplenergy:destroy/item_check/

