
summon marker ~ 0 ~ {Tags:["SimplEnergy_ChunkInit","SimplEnergy_ChunkScan","SimplEnergy_ChunkGen","global.ignore","global.ignore.kill","smithed.entity","smithed.strict"]}
execute as @e[type=marker,tag=SimplEnergy_ChunkInit] at @s run function simplenergy:generate/init_2
