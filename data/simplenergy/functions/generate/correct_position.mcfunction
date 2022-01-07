
execute store result score PosX SimplEnergy_Data run data get entity @s Pos[0]
execute store result score PosZ SimplEnergy_Data run data get entity @s Pos[2]
scoreboard players operation PosX SimplEnergy_Data /= 80 SimplEnergy_Data
scoreboard players operation PosZ SimplEnergy_Data /= 80 SimplEnergy_Data
scoreboard players operation PosX SimplEnergy_Data *= 80 SimplEnergy_Data
scoreboard players operation PosZ SimplEnergy_Data *= 80 SimplEnergy_Data

#Update Position
	execute store result entity @s Pos[0] double 1 run scoreboard players get PosX SimplEnergy_Data
	execute store result entity @s Pos[2] double 1 run scoreboard players get PosZ SimplEnergy_Data
