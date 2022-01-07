#Correct Position
	function simplenergy:generate/correct_position

#Generate Simplunium Ore (x8) at world bottom + 16
	execute as @e[limit=8] run summon marker ~ 0 ~ {Tags:["SimplEnergy_OrePos"]}
	execute as @e[type=marker,tag=SimplEnergy_OrePos] at @s run function simplenergy:generate/simplunium

scoreboard players reset X SimplEnergy_Data
scoreboard players reset Y SimplEnergy_Data
scoreboard players reset Z SimplEnergy_Data
scoreboard players reset NewX SimplEnergy_Data
scoreboard players reset NewY SimplEnergy_Data
scoreboard players reset NewZ SimplEnergy_Data
scoreboard players reset PosX SimplEnergy_Data
scoreboard players reset PosY SimplEnergy_Data
scoreboard players reset PosZ SimplEnergy_Data
scoreboard players reset MaxY SimplEnergy_Data
tag @s remove SimplEnergy_ChunkInit
