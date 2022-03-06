
#Input scores: #xzVariation, #maxHeight

#Define a -/+ value offset randomly with UUID.
#I multiply values by 10 to keep a digit after decimal.
#Init values
	summon area_effect_cloud ~ ~ ~ {Tags:["SimplEnergy_Temp"],Duration:0}
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Temp,limit=1] run function simplenergy:generate/utils/fill_storage
	
	execute store result score x.random SimplEnergy_Data run data get storage simplenergy:items all.Temp[0]
	execute store result score z.random SimplEnergy_Data run data get storage simplenergy:items all.Temp[2]
	scoreboard players operation x SimplEnergy_Data = x.random SimplEnergy_Data
	scoreboard players operation z SimplEnergy_Data = z.random SimplEnergy_Data
	execute store result score y SimplEnergy_Data run data get storage simplenergy:items all.Temp[1]

	data modify storage simplenergy:items all.Temp set from entity @s Pos
	execute store result score PosX SimplEnergy_Data run data get storage simplenergy:items all.Temp[0] 10
	execute store result score PosZ SimplEnergy_Data run data get storage simplenergy:items all.Temp[2] 10

#Edit X & Z Pos : they can take a value between -#xzVariation & +#xzVariation
#Examples for #xzVariation = 400 : -37.4, 14.3, 0.1, ...
	scoreboard players operation x SimplEnergy_Data %= #xzVariation SimplEnergy_Data
	scoreboard players operation z SimplEnergy_Data %= #xzVariation SimplEnergy_Data
	execute if score x.random SimplEnergy_Data matches ..-1 run scoreboard players operation x SimplEnergy_Data *= -1 SimplEnergy_Data
	execute if score z.random SimplEnergy_Data matches ..-1 run scoreboard players operation z SimplEnergy_Data *= -1 SimplEnergy_Data
	scoreboard players operation PosX SimplEnergy_Data += x SimplEnergy_Data
	scoreboard players operation PosZ SimplEnergy_Data += z SimplEnergy_Data

#Edit Y Pos : Y can take a value between world bottom and "#maxHeight"
	scoreboard players operation PosY SimplEnergy_Data = WorldBottom SimplEnergy_Data
	scoreboard players operation PosY SimplEnergy_Data *= 10 SimplEnergy_Data
	scoreboard players operation MaxY SimplEnergy_Data = WorldBottom SimplEnergy_Data
	scoreboard players operation MaxY SimplEnergy_Data *= -10 SimplEnergy_Data
	scoreboard players operation MaxY SimplEnergy_Data += #maxHeight SimplEnergy_Data
	scoreboard players operation y SimplEnergy_Data %= MaxY SimplEnergy_Data
	scoreboard players operation PosY SimplEnergy_Data += y SimplEnergy_Data

#Update Position
	execute store result storage simplenergy:items all.Temp[0] double 0.1 run scoreboard players get PosX SimplEnergy_Data
	execute store result storage simplenergy:items all.Temp[1] double 0.1 run scoreboard players get PosY SimplEnergy_Data
	execute store result storage simplenergy:items all.Temp[2] double 0.1 run scoreboard players get PosZ SimplEnergy_Data
	data modify entity @s Pos set from storage simplenergy:items all.Temp
