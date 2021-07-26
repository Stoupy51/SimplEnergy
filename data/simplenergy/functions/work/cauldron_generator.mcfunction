scoreboard players add @s SE_CauldronGen 1

execute if score @s SE_CauldronGen matches 2.. run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
execute if score @s SE_CauldronGen matches 90.. run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if score @s SE_CauldronGen matches 180.. run setblock ~ ~ ~ minecraft:cauldron
execute if score @s SE_CauldronGen matches 180.. run scoreboard players reset @s SE_CauldronGen

execute if block ~ ~ ~ minecraft:water_cauldron[level=3] if score @s SE_CauldronGen matches 1.. run scoreboard players set @s SE_CauldronGen 1

scoreboard players add @s EF_Joule 2

execute if score @s EF_Joule matches 500.. run scoreboard players set @s EF_Joule 500