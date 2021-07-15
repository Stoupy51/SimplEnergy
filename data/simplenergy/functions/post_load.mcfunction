execute store success score EF_Version SE_Data run scoreboard players get Version EF_Data

execute if score EF_Version SE_Data matches 0 run scoreboard players set EF_Missing SE_Data 1
execute unless score Version EF_Data matches 1.. run scoreboard players set EF_Missing SE_Data 1
execute if score EF_Missing SE_Data matches 1 run tellraw @a {"text":"SimplEnergy Error: Energy Flux API v1.1+ is missing, click [here] to download","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/EnergyFlux-API/releases"}}

execute if score GameVersion EF_Data matches ..2723 run tellraw @a {"text":"SimplEnergy Error: You need at least Minecraft 1.17+.","color":"red"}
execute if score Version EF_Data matches ..1009 run tellraw @a {"text":"SimplEnergy Error: Energy Flux API v1.1+ is needed, click [here] to download","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/EnergyFlux-API/releases"}}
execute if score GameVersion EF_Data matches 2724.. if score Version EF_Data matches 1010.. run tellraw @a {"text":"[Loaded SimplEnergy v1.2.0]","color":"green"}

scoreboard players reset Version SE_Data
scoreboard players reset EF_Version SE_Data
scoreboard players reset EF_Missing SE_Data
