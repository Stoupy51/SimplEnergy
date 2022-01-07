#Get and Search machines with same Energy Storage from SimplEnergy
	scoreboard players operation Temp SimplEnergy_Data = @s energy.max_storage
	tag @s add SimplEnergy_Balance
	tag @s add SimplEnergy_Balanced
	execute if entity @e[type=glow_item_frame,tag=!SimplEnergy_Balance,tag=!SimplEnergy_Balanced,tag=SimplEnergy_Destroyer,distance=..1.1] run function simplenergy:balance/balance
	tag @s remove SimplEnergy_Balance