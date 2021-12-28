scoreboard players set tick_2 SE_Data 0
#Destroy
	function simplenergy:destroy/all

#Others
	execute as @a[scores={SE_MultimeterUse=1..}] at @s run function simplenergy:work/multimeter
	clear @a minecraft:cobblestone{SE_CustomTextureItem:1b}
