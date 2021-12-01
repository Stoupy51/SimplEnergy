execute store result score GameVersion load.status run data get entity @r DataVersion
execute store success score EF_Loaded SE_Data run scoreboard players get EnergyFlux load.status

execute if score EF_Loaded SE_Data matches 0 run scoreboard players set EF_Missing SE_Data 1
execute unless score EnergyFlux load.status matches 1.. run scoreboard players set EF_Missing SE_Data 1
execute if score EF_Missing SE_Data matches 1 run tellraw @a {"text":"SimplEnergy Error: Energy Flux v1.3.0+ is missing, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/EnergyFlux/releases"}}

execute unless score GameVersion load.status matches 2860.. run tellraw @a {"text":"SimplEnergy Error: You need at least Minecraft 1.18+.","italic":false,"color":"red"}
execute unless score EF_Missing SE_Data matches 1 unless score EnergyFlux load.status matches 1030.. run tellraw @a {"text":"SimplEnergy Error: Energy Flux v1.3.0+ is needed, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/EnergyFlux/releases"}}
execute if score GameVersion load.status matches 2860.. if score EnergyFlux load.status matches 1030.. run tellraw @a {"text":"[Loaded SimplEnergy v1.5.0]","italic":false,"color":"green"}

scoreboard players reset EF_Loaded SE_Data
scoreboard players reset EF_Missing SE_Data

execute unless entity @a run schedule function simplenergy:post_load 1t replace
