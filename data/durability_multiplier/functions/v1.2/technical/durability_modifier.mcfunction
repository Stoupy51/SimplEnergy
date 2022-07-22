
#Score manipulation to get new damage amount
scoreboard players operation #new_damage durability_multiplier.data = #damage durability_multiplier.data
scoreboard players operation #new_damage durability_multiplier.data *= #1000 durability_multiplier.data
scoreboard players operation #new_damage durability_multiplier.data /= #multiplier durability_multiplier.data
scoreboard players operation #new_damage durability_multiplier.data /= #1000 durability_multiplier.data
scoreboard players add #new_damage durability_multiplier.data 1
scoreboard players operation #damage durability_multiplier.data -= #new_damage durability_multiplier.data
execute if score #damage durability_multiplier.data matches 0.. run scoreboard players set #damage durability_multiplier.data -1
