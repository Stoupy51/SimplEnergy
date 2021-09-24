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

tag @s remove SE_ChunkInit
