scoreboard players set #tick_2 simplenergy.data 0
#Destroy
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all

#Others
	execute as @a[tag=!global.ignore.gui,nbt={Inventory:[{Slot:-106b,tag:{simplenergy:{multimeter:1b}}}]}] at @s anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/passive_multimeter
	execute as @a[scores={simplenergy.multimeter_use=1..}] at @s run function simplenergy:work/multimeter
	clear @a minecraft:cobblestone{simplenergy:{texture_item:1b}}
