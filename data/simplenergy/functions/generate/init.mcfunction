summon minecraft:marker ~ 0 ~ {Tags:["SE_ChunkInit","SE_ChunkScan","SE_ChunkGen"]}
execute as @e[type=minecraft:marker,tag=SE_ChunkInit] at @s run function simplenergy:generate/init_2
