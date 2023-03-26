
# Increase timer data and setblock depending on timer data
scoreboard players add @s simplenergy.timer_data 1
execute if score @s simplenergy.timer_data matches 2.. run setblock ~ ~ ~ water_cauldron[level=2]
execute if score @s simplenergy.timer_data matches 90.. run setblock ~ ~ ~ water_cauldron[level=1]
execute if score @s simplenergy.timer_data matches 180.. run setblock ~ ~ ~ cauldron
execute if score @s simplenergy.timer_data matches 180.. run scoreboard players reset @s simplenergy.timer_data

# If the cauldron is full, reset timer data
execute if block ~ ~ ~ water_cauldron[level=3] if score @s simplenergy.timer_data matches 1.. run scoreboard players set @s simplenergy.timer_data 1

# Generate energy
scoreboard players add @s energy.storage 5
execute if score @s energy.storage matches 500.. run scoreboard players set @s energy.storage 500

