
scoreboard players remove #maxTry simplenergy.data 1
scoreboard players set Temp simplenergy.data 0

execute if block ~ ~ ~ #simplenergy:air run function simplenergy:generate/utils/in_air
execute if score Temp simplenergy.data matches 0 run function simplenergy:generate/utils/in_block

#Try a new time if the block is still not adjacent to air
execute if score Temp simplenergy.data matches 0 unless score #maxTry simplenergy.data matches 0 run function simplenergy:generate/utils/new_random_position

