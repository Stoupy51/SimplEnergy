
#Generate Simplunium Ore (x8)
	scoreboard players set #xzVariation SimplEnergy_Data 400
	scoreboard players set #maxHeight SimplEnergy_Data 400
	execute as @e[limit=8] run summon area_effect_cloud ~ 0 ~ {Tags:["SimplEnergy_OrePos"],Duration:0}
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_OrePos] at @s run function simplenergy:generate/simplunium
