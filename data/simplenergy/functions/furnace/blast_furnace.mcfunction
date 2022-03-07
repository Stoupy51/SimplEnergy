
#Look at where the block has been placed
	function simplenergy:furnace/look_all
#Place the marker
	execute as @e[type=area_effect_cloud,tag=simplenergy.placed_furnace] at @s run function simplenergy:furnace/place_entity
advancement revoke @s only simplenergy:blast_furnace
