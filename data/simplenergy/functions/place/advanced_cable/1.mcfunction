#Look at where the block has been placed
	function simplenergy:place/look_all_head
#Place the custom block
	execute as @e[type=area_effect_cloud,tag=SE_Placed,limit=1] at @s run function simplenergy:place/advanced_cable/2
#Update scores
	execute as @e[type=item_frame,tag=SE_SetNew,limit=1] at @s run function simplenergy:place/advanced_cable/3
advancement revoke @s only simplenergy:place/advanced_cable