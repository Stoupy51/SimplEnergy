
function energy_flux:stats
tellraw @s [{"text":"\n[SimplEnergy Stats]","color":"green"}]

execute store result score Temp SE_Data if entity @e[tag=SE_Destroyer]
tellraw @s ["",{"text":"Custom blocks loaded: ","color":"gray"},{"score":{"name":"Temp","objective":"SE_Data"},"color":"gold"}]

execute store result score Temp SE_Data if entity @e[type=item_frame,tag=SE_SimpluniumOre]
tellraw @s ["",{"text":"Custom ores: ","color":"gray"},{"score":{"name":"Temp","objective":"SE_Data"},"color":"gold"}]

execute store result score Temp SE_Data if entity @e[type=marker,tag=SE_ChunkScan]
tellraw @s ["",{"text":"Chunks markers: ","color":"gray"},{"score":{"name":"Temp","objective":"SE_Data"},"color":"gold"}]

execute store result score Temp SE_Data if entity @e[type=marker,tag=SE_Furnaces]
tellraw @s ["",{"text":"Markers on furnaces: ","color":"gray"},{"score":{"name":"Temp","objective":"SE_Data"},"color":"gold"}]