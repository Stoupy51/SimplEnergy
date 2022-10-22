
scoreboard players add @s simplenergy.data_2 1

execute if score @s simplenergy.data_2 matches 2.. run setblock ~ ~ ~ water_cauldron[level=2]
execute if score @s simplenergy.data_2 matches 90.. run setblock ~ ~ ~ water_cauldron[level=1]
execute if score @s simplenergy.data_2 matches 180.. run setblock ~ ~ ~ cauldron
execute if score @s simplenergy.data_2 matches 180.. run scoreboard players reset @s simplenergy.data_2

execute if block ~ ~ ~ water_cauldron[level=3] if score @s simplenergy.data_2 matches 1.. run scoreboard players set @s simplenergy.data_2 1

scoreboard players add @s energy.storage 5

execute if score @s energy.storage matches 500.. run scoreboard players set @s energy.storage 500

