
#Look at where the block has been placed
	function simplenergy:place/look_all_head
#Place the custom block
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Placed,limit=1] at @s run function simplenergy:place/simple_cable/primary
#Revoke advancement
	advancement revoke @s only simplenergy:place/simple_cable