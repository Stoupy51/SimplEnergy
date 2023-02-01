
#Generate Simplunium Ore (x4)
	scoreboard players set #xz_variation simplenergy.data 400
	scoreboard players set #max_height simplenergy.data 400
	summon marker ~ 0 ~ {Tags:["simplenergy.ore_pos"]}
	summon marker ~ 0 ~ {Tags:["simplenergy.ore_pos"]}
	summon marker ~ 0 ~ {Tags:["simplenergy.ore_pos"]}
	summon marker ~ 0 ~ {Tags:["simplenergy.ore_pos"]}
	execute as @e[tag=simplenergy.ore_pos,predicate=simplenergy:in_overworld] at @s run function simplenergy:generate/simplunium

kill @e[tag=simplenergy.ore_pos]
