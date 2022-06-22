
#Look at where the block has been placed
	execute anchored eyes facing ^ ^ ^2 run function simplenergy:place/look_all_head
#Place the custom block
	execute as @e[tag=simplenergy.placed] at @s run function simplenergy:place/advanced_cable/primary
#Advancement
	advancement revoke @s only simplenergy:place/advanced_cable
