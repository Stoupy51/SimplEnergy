scoreboard players set tick_2 SE_Data 0
#Destroy
	function simplenergy:destroy/all

#Others
	execute as @a[scores={SE_JoulemeterUse=1..}] at @s run function simplenergy:work/joulemeter
	clear @a minecraft:cobblestone{SE_CustomTextureItem:1s}
