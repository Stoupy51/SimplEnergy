#Correct Position
	function simplenergy:generate/correct_position

#Call function tag
	execute at @s run function #simplenergy:generate_ores


scoreboard players reset x.random SimplEnergy_Data
scoreboard players reset z.random SimplEnergy_Data
scoreboard players reset x SimplEnergy_Data
scoreboard players reset y SimplEnergy_Data
scoreboard players reset z SimplEnergy_Data
scoreboard players reset MaxY SimplEnergy_Data
scoreboard players reset PosX SimplEnergy_Data
scoreboard players reset PosY SimplEnergy_Data
scoreboard players reset PosZ SimplEnergy_Data
scoreboard players reset #xzVariation SimplEnergy_Data
scoreboard players reset #maxHeight SimplEnergy_Data
scoreboard players reset #maxTry SimplEnergy_Data
tag @s remove SimplEnergy_ChunkInit
