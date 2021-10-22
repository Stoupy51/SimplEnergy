execute store result score X SE_Data2 run data get entity @s Pos[0]
execute store result score Y SE_Data2 run data get entity @s Pos[1]
execute store result score Z SE_Data2 run data get entity @s Pos[2]
execute store result entity @s Pos[0] double 1 run scoreboard players get X SE_Data2
execute store result entity @s Pos[1] double 1 run scoreboard players get Y SE_Data2
execute store result entity @s Pos[2] double 1 run scoreboard players get Z SE_Data2
execute at @s positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.9,tag=SE_Furnaces,limit=1] run summon armor_stand ~ ~ ~ {Tags:["SE_Furnaces"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Marker:1b}
scoreboard players reset X SE_Data2
scoreboard players reset Y SE_Data2
scoreboard players reset Z SE_Data2
kill @s
