#Look at where the block has been placed
	function simplenergy:place/look_all
tag @s add SimplEnergy_Placer
#Place the custom block
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Placed,limit=1] at @s run function simplenergy:place/simple_battery/2
#Update scores
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SetNew,limit=1] at @s run function simplenergy:place/simple_battery/3
advancement revoke @s only simplenergy:place/simple_battery
tag @s remove SimplEnergy_Placer
