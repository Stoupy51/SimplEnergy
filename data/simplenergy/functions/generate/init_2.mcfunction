#Remove digits
    execute store result entity @s Pos[0] int 1 run data get entity @s Pos[0]
    execute store result entity @s Pos[2] int 1 run data get entity @s Pos[2]

#Generate Simplunium Ore (x16) at y=16
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    summon minecraft:marker ~ 16 ~ {Tags:["SE_OrePos"]}
    execute as @e[type=marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium

tag @s remove SE_ChunkInit
