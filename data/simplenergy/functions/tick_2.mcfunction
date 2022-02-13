scoreboard players set tick_2 SimplEnergy_Data 0
#Destroy
	execute as @e[type=#energy:valid_block_entities,tag=SimplEnergy_Destroyer] at @s run function simplenergy:destroy/all

#Others
	execute as @a[tag=!global.ignore.gui,nbt={Inventory:[{Slot:-106b,tag:{SimplEnergy_Multimeter:1b}}]}] at @s anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/passive_multimeter
	execute as @a[scores={SimplEnergy_MultimeterUse=1..}] at @s run function simplenergy:work/multimeter
	clear @a minecraft:cobblestone{SimplEnergy_CustomTextureItem:1b}
