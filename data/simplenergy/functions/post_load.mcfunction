execute store success score EF_Loaded SE_Data run scoreboard players get EnergyFlux EF_Versions

execute if score EF_Loaded SE_Data matches 0 run scoreboard players set EF_Missing SE_Data 1
execute unless score EnergyFlux EF_Versions matches 1.. run scoreboard players set EF_Missing SE_Data 1
execute if score EF_Missing SE_Data matches 1 run tellraw @a {"text":"SimplEnergy Error: Energy Flux API v1.1.3+ is missing, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/EnergyFlux-API/releases"}}

execute if score GameVersion EF_Versions matches ..2723 run tellraw @a {"text":"SimplEnergy Error: You need at least Minecraft 1.17+.","italic":false,"color":"red"}
execute if score EnergyFlux EF_Versions matches ..1012 run tellraw @a {"text":"SimplEnergy Error: Energy Flux API v1.1.3+ is needed, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/EnergyFlux-API/releases"}}
execute if score GameVersion EF_Versions matches 2724.. if score EnergyFlux EF_Versions matches 1013.. run tellraw @a {"text":"[Loaded SimplEnergy v1.3.2]","italic":false,"color":"green"}

scoreboard players reset EF_Loaded SE_Data
scoreboard players reset EF_Missing SE_Data

execute unless entity @a run schedule function simplenergy:post_load 5s replace