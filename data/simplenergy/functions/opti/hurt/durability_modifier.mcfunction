
#Score Manipulation to get new Damage Amount
execute if score Random simplenergy.data matches 0 run scoreboard players operation temp2 simplenergy.data = temp simplenergy.data
execute if score Random simplenergy.data matches 0 run scoreboard players operation temp2 simplenergy.data /= DurabilityMultiplier simplenergy.data
execute if score Random simplenergy.data matches 0 run scoreboard players add temp2 simplenergy.data 1
execute if score Random simplenergy.data matches 0 run scoreboard players operation temp simplenergy.data -= temp2 simplenergy.data
execute if score Random simplenergy.data matches 0 if score temp simplenergy.data matches 0 run scoreboard players set temp simplenergy.data -1
