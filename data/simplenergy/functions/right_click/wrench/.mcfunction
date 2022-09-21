
#Look at where player is looking at and stop when found a block
	scoreboard players set #raycast simplenergy.data 0
	execute anchored eyes positioned ^ ^ ^.2 run function simplenergy:right_click/wrench/raycast
	scoreboard players reset #raycast simplenergy.data
