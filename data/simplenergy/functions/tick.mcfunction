#Destroy
    execute if entity @e[type=minecraft:glow_item_frame,tag=SE_Destroyer,limit=1] run function simplenergy:destroy/all

#Timer
    scoreboard players add Second SE_Timer 1
    execute if score Second SE_Timer matches 20.. run function simplenergy:tick_second

#Others
    execute if score Second SE_Timer matches 1 as @e[type=minecraft:glow_item_frame,tag=SE_FurnaceGenerator] at @s run function simplenergy:visual/furnace_generator
    execute as @a[scores={SE_JoulemeterUse=1..}] at @s run function simplenergy:work/joulemeter

#Work
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricSmelter] at @s if score @s EF_Joule matches 4.. run function simplenergy:work/electric_smelter
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricBrewing] at @s if score @s EF_Joule matches 1.. run function simplenergy:work/electric_brewing_stand

#Fixes
	clear @a minecraft:cobblestone{SE_CustomTextureItem:1b}
