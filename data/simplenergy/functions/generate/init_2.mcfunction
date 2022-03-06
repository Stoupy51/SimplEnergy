#Correct Position
	function simplenergy:generate/correct_position

#Call function tag
	execute at @s run function #simplenergy:generate_ores


scoreboard players reset x.random simplenergy.data
scoreboard players reset z.random simplenergy.data
scoreboard players reset x simplenergy.data
scoreboard players reset y simplenergy.data
scoreboard players reset z simplenergy.data
scoreboard players reset MaxY simplenergy.data
scoreboard players reset PosX simplenergy.data
scoreboard players reset PosY simplenergy.data
scoreboard players reset PosZ simplenergy.data
scoreboard players reset #xzVariation simplenergy.data
scoreboard players reset #maxHeight simplenergy.data
scoreboard players reset #maxTry simplenergy.data
tag @s remove simplenergy.chunk_init
