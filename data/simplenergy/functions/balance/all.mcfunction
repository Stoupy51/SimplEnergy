#Get and Search machines with same Energy Storage from SimplEnergy
	scoreboard players operation Temp SE_Data = @s energy.max_storage
	tag @s add SE_Balance
	tag @s add SE_Balanced
	execute if entity @e[type=glow_item_frame,tag=!SE_Balance,tag=!SE_Balanced,tag=SE_Destroyer,distance=..1.1] run function simplenergy:balance/balance
	tag @s remove SE_Balance