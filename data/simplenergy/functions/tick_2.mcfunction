scoreboard players set tick_2 SE_Data 0
#Destroy
	function simplenergy:destroy/all

#Others
	execute as @a[nbt={Inventory:[{Slot:-106b,tag:{SE_Multimeter:1b}}]}] at @s anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/passive_multimeter
	execute as @a[scores={SE_MultimeterUse=1..}] at @s run function simplenergy:work/multimeter
	clear @a minecraft:cobblestone{SE_CustomTextureItem:1b}
