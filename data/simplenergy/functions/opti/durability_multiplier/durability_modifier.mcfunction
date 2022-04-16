
#Score Manipulation to get new Damage Amount
execute if score #random simplenergy.data matches ..999 run scoreboard players operation #temp_2 simplenergy.data = #temp simplenergy.data
execute if score #random simplenergy.data matches ..999 run scoreboard players operation #temp_2 simplenergy.data /= #durability_multiplier simplenergy.data
execute if score #random simplenergy.data matches ..999 run scoreboard players add #temp_2 simplenergy.data 1
execute if score #random simplenergy.data matches ..999 run scoreboard players operation #temp simplenergy.data -= #temp_2 simplenergy.data
execute if score #random simplenergy.data matches ..999 if score #temp simplenergy.data matches 0 run scoreboard players set #temp simplenergy.data -1
