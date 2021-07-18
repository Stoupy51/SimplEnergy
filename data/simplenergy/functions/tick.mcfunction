#Destroy
    execute if entity @e[type=minecraft:glow_item_frame,tag=SE_Destroyer,limit=1] run function simplenergy:destroy/all

#Timer
    scoreboard players add Second SE_Data 1
    execute if score Second SE_Data matches 20.. run function simplenergy:tick_second

#Others
    execute as @a[scores={SE_JoulemeterUse=1..}] at @s run function simplenergy:work/joulemeter
    execute as @e[type=minecraft:glow_item_frame,tag=SE_CraftingTable] at @s if entity @p[distance=..7] run function simplenergy:craft/all
    execute as @a at @s run function simplenergy:generate/player

#Work
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricSmelter] at @s if score @s EF_Joule matches 4.. run function simplenergy:work/electric_smelter
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricBrewing] at @s if score @s EF_Joule matches 1.. run function simplenergy:work/electric_brewing_stand

#Fixes
	clear @a minecraft:cobblestone{SE_CustomTextureItem:1b}
