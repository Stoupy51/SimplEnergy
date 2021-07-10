scoreboard players add @s SE_SimpleGen 1

execute if score @s SE_SimpleGen matches 2.. run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
execute if score @s SE_SimpleGen matches 30.. run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if score @s SE_SimpleGen matches 60.. run setblock ~ ~ ~ minecraft:cauldron
execute if score @s SE_SimpleGen matches 60.. run scoreboard players reset @s SE_SimpleGen

execute if block ~ ~ ~ minecraft:water_cauldron[level=3] if score @s SE_SimpleGen matches 1.. run scoreboard players set @s SE_SimpleGen 1

scoreboard players add @s EF_Joule 2

execute if score @s EF_Joule matches 500.. run scoreboard players set @s EF_Joule 500