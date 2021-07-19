execute store result entity @s Pos[0] int 1 run data get entity @s Pos[0]
execute store result entity @s Pos[2] int 1 run data get entity @s Pos[2]

summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium
summon minecraft:marker ~ 10 ~ {Tags:["SE_OrePos"]}
execute as @e[type=minecraft:marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium

tag @s remove SE_ChunkInit
