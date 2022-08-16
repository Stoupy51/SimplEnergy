
#Generate Simplunium Ore (x4)
	scoreboard players set #xz_variation simplenergy.data 400
	scoreboard players set #max_height simplenergy.data 400
	execute as @e[limit=4] run summon marker ~ 0 ~ {Tags:["simplenergy.ore_pos"]}
	execute as @e[tag=simplenergy.ore_pos,predicate=simplenergy:in_overworld] at @s run function simplenergy:generate/simplunium

kill @e[tag=simplenergy.ore_pos]
