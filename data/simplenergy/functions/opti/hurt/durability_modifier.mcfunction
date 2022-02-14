
#Score Manipulation to get new Damage Amount
execute if score Random SimplEnergy_Data matches 0 run scoreboard players operation Temp2 SimplEnergy_Data = Temp SimplEnergy_Data
execute if score Random SimplEnergy_Data matches 0 run scoreboard players operation Temp2 SimplEnergy_Data /= DurabilityMultiplier SimplEnergy_Data
execute if score Random SimplEnergy_Data matches 0 run scoreboard players add Temp2 SimplEnergy_Data 1
execute if score Random SimplEnergy_Data matches 0 run scoreboard players operation Temp SimplEnergy_Data -= Temp2 SimplEnergy_Data
execute if score Random SimplEnergy_Data matches 0 if score Temp SimplEnergy_Data matches 0 run scoreboard players set Temp SimplEnergy_Data -1
