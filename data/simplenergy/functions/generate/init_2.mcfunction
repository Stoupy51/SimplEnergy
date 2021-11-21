#Generate Simplunium Ore (x32) at world bottom + 16
	execute as @e[limit=32] run summon marker ~ 0 ~ {Tags:["SE_OrePos"]}
	execute as @e[type=marker,tag=SE_OrePos] at @s run function simplenergy:generate/simplunium

scoreboard players reset X SE_Data
scoreboard players reset Y SE_Data
scoreboard players reset Z SE_Data
scoreboard players reset NewX SE_Data
scoreboard players reset NewY SE_Data
scoreboard players reset NewZ SE_Data
scoreboard players reset PosX SE_Data
scoreboard players reset PosY SE_Data
scoreboard players reset PosZ SE_Data
scoreboard players reset MaxY SE_Data
tag @s remove SE_ChunkInit
