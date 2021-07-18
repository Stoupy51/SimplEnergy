execute store result entity @s Pos[0] int 1 run data get entity @s Pos[0]
execute store result entity @s Pos[2] int 1 run data get entity @s Pos[2]

scoreboard players set 300 SE_Data 300
scoreboard players set 100 SE_Data 100
scoreboard players set 10 SE_Data 10
execute store result score X SE_Data run data get entity @s UUID[1] 1
execute store result score Y SE_Data run data get entity @s UUID[2] 1
execute store result score Z SE_Data run data get entity @s UUID[3] 1
scoreboard players operation X SE_Data %= 300 SE_Data
scoreboard players operation Y SE_Data %= 100 SE_Data
scoreboard players operation Z SE_Data %= 300 SE_Data
execute store result score PosX SE_Data run data get entity @s Pos[0] 10
execute store result score PosZ SE_Data run data get entity @s Pos[2] 10
scoreboard players set PosY SE_Data 100
scoreboard players operation PosX SE_Data += X SE_Data
scoreboard players operation PosY SE_Data += Y SE_Data
scoreboard players operation PosZ SE_Data += Z SE_Data

summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/ore

tag @s remove SE_ChunkInit
