
#Generate Simplunium Ore (x8)
	scoreboard players set #xz_variation simplenergy.data 400
	scoreboard players set #max_height simplenergy.data 400
	execute as @e[limit=8] run summon area_effect_cloud ~ 0 ~ {Tags:["simplenergy.ore_pos"],Duration:0}
	execute as @e[type=area_effect_cloud,tag=simplenergy.ore_pos] at @s run function simplenergy:generate/simplunium
