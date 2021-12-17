execute as @e[type=glow_item_frame,tag=!SE_Balance,tag=!SE_Balanced,tag=SE_Destroyer,distance=..1.1] if score @s energy.max_storage = Temp SE_Data at @s run function simplenergy:balance/found
#Redistributes Energy
	scoreboard players set Temp SE_Data 0
	scoreboard players set Count SE_Data 0
	execute as @e[type=glow_item_frame,tag=SE_Balance] run function simplenergy:balance/add
	scoreboard players operation Remain SE_Data = Temp SE_Data
	scoreboard players operation Balance SE_Data = Temp SE_Data
	scoreboard players operation Balance SE_Data /= Count SE_Data
	scoreboard players operation Remain SE_Data %= Count SE_Data
	scoreboard players operation @e[type=glow_item_frame,tag=SE_Balance] energy.storage = Balance SE_Data
	scoreboard players operation @s energy.storage += Remain SE_Data
	execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

#Continue
	tag @e[type=glow_item_frame,tag=SE_Balance] remove SE_Balance
	execute as @s[tag=SE_SolarPanel] as @e[type=glow_item_frame,tag=SE_SolarPanel,tag=!SE_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute as @s[tag=SE_CauldronGenerator] as @e[type=glow_item_frame,tag=SE_CauldronGenerator,tag=!SE_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute as @s[tag=SE_SimpleBattery] as @e[type=glow_item_frame,tag=SE_SimpleBattery,tag=!SE_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute as @s[tag=SE_AdvancedBattery] as @e[type=glow_item_frame,tag=SE_AdvancedBattery,tag=!SE_Balanced,limit=1] at @s run function simplenergy:balance/all
	execute as @s[tag=SE_EliteBattery] as @e[type=glow_item_frame,tag=SE_EliteBattery,tag=!SE_Balanced,limit=1] at @s run function simplenergy:balance/all
