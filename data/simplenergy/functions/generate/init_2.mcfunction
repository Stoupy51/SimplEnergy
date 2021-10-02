#Generate Simplunium Ore (x24) at world bottom + 16
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
	summon minecraft:marker ~ 0 ~ {Tags:["SE_OrePos"]}
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
scoreboard players reset 1500 SE_Data
scoreboard players reset 1000 SE_Data
scoreboard players reset 400 SE_Data
scoreboard players reset 260 SE_Data
scoreboard players reset 200 SE_Data
scoreboard players reset 100 SE_Data
scoreboard players reset 10 SE_Data
scoreboard players reset -1 SE_Data
tag @s remove SE_ChunkInit
