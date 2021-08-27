scoreboard players add @s SE_Data2 1

execute if score @s SE_Data2 matches 2.. run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
execute if score @s SE_Data2 matches 90.. run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if score @s SE_Data2 matches 180.. run setblock ~ ~ ~ minecraft:cauldron
execute if score @s SE_Data2 matches 180.. run scoreboard players reset @s SE_Data2

execute if block ~ ~ ~ minecraft:water_cauldron[level=3] if score @s SE_Data2 matches 1.. run scoreboard players set @s SE_Data2 1

scoreboard players add @s EF_Joule 20

execute if score @s EF_Joule matches 500.. run scoreboard players set @s EF_Joule 500