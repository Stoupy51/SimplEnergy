#Look at where the block has been placed
	function simplenergy:place/look_all
#Place the custom block
	execute as @e[type=area_effect_cloud,tag=SE_Placed,limit=1] at @s run function simplenergy:place/simplunium_block/2
advancement revoke @s only simplenergy:place/simplunium_block
