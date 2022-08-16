
#Correct Position
	function simplenergy:generate/correct_position

#Call function tag
	execute at @s run function #simplenergy:generate_ores

kill @e[tag=simplenergy.temp]
scoreboard players reset #x.random simplenergy.data
scoreboard players reset #z.random simplenergy.data
scoreboard players reset #x simplenergy.data
scoreboard players reset #y simplenergy.data
scoreboard players reset #z simplenergy.data
scoreboard players reset #y_max simplenergy.data
scoreboard players reset #pos_x simplenergy.data
scoreboard players reset #pos_y simplenergy.data
scoreboard players reset #pos_z simplenergy.data
scoreboard players reset #xz_variation simplenergy.data
scoreboard players reset #max_height simplenergy.data
scoreboard players reset #max_attempts simplenergy.data
tag @s remove simplenergy.chunk_init
