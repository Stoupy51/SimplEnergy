
scoreboard players remove #maxTry SimplEnergy_Data 1
scoreboard players set Temp SimplEnergy_Data 0

execute if block ~ ~ ~ #simplenergy:air run function simplenergy:generate/utils/in_air
execute if score Temp SimplEnergy_Data matches 0 run function simplenergy:generate/utils/in_block

#Try a new time if the block is still not adjacent to air
execute if score Temp SimplEnergy_Data matches 0 unless score #maxTry SimplEnergy_Data matches 0 run function simplenergy:generate/utils/new_random_position

