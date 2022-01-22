#Get and Search machines with same Energy Storage from SimplEnergy
	scoreboard players operation Temp SimplEnergy_Data = @s energy.max_storage
	tag @s add SimplEnergy_Balance
	tag @s add SimplEnergy_Balanced
	execute if entity @e[type=glow_item_frame,tag=!SimplEnergy_Balance,tag=!SimplEnergy_Balanced,tag=SimplEnergy_Destroyer,distance=..1.1] run function simplenergy:balance/balance
	tag @s remove SimplEnergy_Balance

#Continue
	tag @e[type=glow_item_frame,tag=SimplEnergy_Balance] remove SimplEnergy_Balance
	execute if entity @s[tag=SimplEnergy_SolarPanel] as @e[type=glow_item_frame,tag=SimplEnergy_SolarPanel,tag=!SimplEnergy_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=SimplEnergy_CauldronGenerator] as @e[type=glow_item_frame,tag=SimplEnergy_CauldronGenerator,tag=!SimplEnergy_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=SimplEnergy_SimpleBattery] as @e[type=glow_item_frame,tag=SimplEnergy_SimpleBattery,tag=!SimplEnergy_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=SimplEnergy_AdvancedBattery] as @e[type=glow_item_frame,tag=SimplEnergy_AdvancedBattery,tag=!SimplEnergy_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=SimplEnergy_EliteBattery] as @e[type=glow_item_frame,tag=SimplEnergy_EliteBattery,tag=!SimplEnergy_Balanced,limit=1] at @s run function simplenergy:balance/all
