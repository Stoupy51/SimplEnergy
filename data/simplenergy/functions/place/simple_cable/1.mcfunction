function simplenergy:place/look_all_head
#Place the custom block
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Placed,limit=1] at @s run function simplenergy:place/simple_cable/2
#Update scores
	execute as @e[type=item_frame,tag=SimplEnergy_SetNew,limit=1] at @s run function simplenergy:place/simple_cable/3
advancement revoke @s only simplenergy:place/simple_cable
