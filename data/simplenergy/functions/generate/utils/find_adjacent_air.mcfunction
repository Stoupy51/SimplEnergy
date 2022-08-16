
scoreboard players remove #max_attempts simplenergy.data 1
scoreboard players set #temp simplenergy.data 0

execute at @s if block ~ ~ ~ #simplenergy:air run function simplenergy:generate/utils/in_air
execute at @s if score #temp simplenergy.data matches 0 run function simplenergy:generate/utils/in_block

#Try a new time if the block is still not adjacent to air
execute if score #temp simplenergy.data matches 0 unless score #max_attempts simplenergy.data matches 0 run function simplenergy:generate/utils/new_random_position

