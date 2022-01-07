#Look at where the block has been placed
	function simplenergy:place/all_furnace/look_all
#Place the marker
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_PlacedFurnace] at @s run function simplenergy:place/all_furnace/place_entity
advancement revoke @s only simplenergy:furnace
