execute as @e[type=glow_item_frame,tag=!SimplEnergy_Balance,tag=!SimplEnergy_Balanced,tag=SimplEnergy_Destroyer,distance=..1.1] if score @s energy.max_storage = Temp SimplEnergy_Data at @s run function simplenergy:balance/found
#Redistributes Energy
	scoreboard players set Temp SimplEnergy_Data 0
	scoreboard players set Count SimplEnergy_Data 0
	execute as @e[type=glow_item_frame,tag=SimplEnergy_Balance] run function simplenergy:balance/add
	scoreboard players operation Remain SimplEnergy_Data = Temp SimplEnergy_Data
	scoreboard players operation Balance SimplEnergy_Data = Temp SimplEnergy_Data
	scoreboard players operation Balance SimplEnergy_Data /= Count SimplEnergy_Data
	scoreboard players operation Remain SimplEnergy_Data %= Count SimplEnergy_Data
	scoreboard players operation @e[type=glow_item_frame,tag=SimplEnergy_Balance] energy.storage = Balance SimplEnergy_Data
	scoreboard players operation @s energy.storage += Remain SimplEnergy_Data
	execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
