
execute store result score PosX simplenergy.data run data get entity @s Pos[0]
execute store result score PosZ simplenergy.data run data get entity @s Pos[2]
scoreboard players operation PosX simplenergy.data /= 80 simplenergy.data
scoreboard players operation PosZ simplenergy.data /= 80 simplenergy.data
scoreboard players operation PosX simplenergy.data *= 80 simplenergy.data
scoreboard players operation PosZ simplenergy.data *= 80 simplenergy.data

#Update Position
	execute store result entity @s Pos[0] double 1 run scoreboard players get PosX simplenergy.data
	execute store result entity @s Pos[2] double 1 run scoreboard players get PosZ simplenergy.data
