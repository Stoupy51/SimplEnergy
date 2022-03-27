
execute store result score #pos_x simplenergy.data run data get entity @s Pos[0]
execute store result score #pos_z simplenergy.data run data get entity @s Pos[2]
scoreboard players operation #pos_x simplenergy.data /= #80 simplenergy.data
scoreboard players operation #pos_z simplenergy.data /= #80 simplenergy.data
scoreboard players operation #pos_x simplenergy.data *= #80 simplenergy.data
scoreboard players operation #pos_z simplenergy.data *= #80 simplenergy.data

#Update Position
	execute store result entity @s Pos[0] double 1 run scoreboard players get #pos_x simplenergy.data
	execute store result entity @s Pos[2] double 1 run scoreboard players get #pos_z simplenergy.data
