scoreboard players set tick_2 SE_Data 0
#Destroy
    execute if entity @e[type=glow_item_frame,tag=SE_Destroyer,limit=1] run function simplenergy:destroy/all

#Others
    execute as @a[scores={SE_JoulemeterUse=1..}] at @s run function simplenergy:work/joulemeter
    execute as @e[type=glow_item_frame,tag=SE_CraftingTable] at @s if entity @p[distance=..7] run function simplenergy:craft/all
	clear @a minecraft:cobblestone{SE_CustomTextureItem:1s}
