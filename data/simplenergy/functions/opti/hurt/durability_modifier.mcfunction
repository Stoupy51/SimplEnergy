
#Score Manipulation to get new Damage Amount
execute if score Random simplenergy.data matches 0 run scoreboard players operation Temp2 simplenergy.data = Temp simplenergy.data
execute if score Random simplenergy.data matches 0 run scoreboard players operation Temp2 simplenergy.data /= DurabilityMultiplier simplenergy.data
execute if score Random simplenergy.data matches 0 run scoreboard players add Temp2 simplenergy.data 1
execute if score Random simplenergy.data matches 0 run scoreboard players operation Temp simplenergy.data -= Temp2 simplenergy.data
execute if score Random simplenergy.data matches 0 if score Temp simplenergy.data matches 0 run scoreboard players set Temp simplenergy.data -1
