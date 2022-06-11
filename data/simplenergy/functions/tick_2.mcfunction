
scoreboard players set #tick_2 simplenergy.data 0
#Destroy
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.destroyer,tag=!simplenergy.item_destroy,predicate=!simplenergy:check_destroyer] at @s run function simplenergy:destroy/all

#Others
	execute as @a[tag=!global.ignore.gui,nbt={Inventory:[{Slot:-106b,tag:{simplenergy:{multimeter:1b}}}]}] at @s anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/passive_multimeter/main
	clear @a #simplenergy:texture_item{simplenergy:{texture_item:1b}}
