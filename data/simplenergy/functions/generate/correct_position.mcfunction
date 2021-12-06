
execute store result score PosX SE_Data run data get entity @s Pos[0]
execute store result score PosZ SE_Data run data get entity @s Pos[2]
scoreboard players operation PosX SE_Data /= 80 SE_Data
scoreboard players operation PosZ SE_Data /= 80 SE_Data
scoreboard players operation PosX SE_Data *= 80 SE_Data
scoreboard players operation PosZ SE_Data *= 80 SE_Data

#Update Position
	execute store result entity @s Pos[0] double 1 run scoreboard players get PosX SE_Data
	execute store result entity @s Pos[2] double 1 run scoreboard players get PosZ SE_Data
