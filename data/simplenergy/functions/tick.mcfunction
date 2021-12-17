#Timer
	scoreboard players add Second SE_Data 1
	scoreboard players add tick_2 SE_Data 1
	execute if score tick_2 SE_Data matches 2.. run function simplenergy:tick_2
	execute if score Second SE_Data matches 20.. run function simplenergy:tick_second

#Others
	execute as @e[type=glow_item_frame,tag=SE_CraftingTable,predicate=simplenergy:is_barrel_open] at @s if entity @p[distance=..7] run function simplenergy:craft/all
	execute as @e[type=glow_item_frame,tag=SE_ElectricSmelter] at @s if score @s energy.storage matches 4.. run function simplenergy:work/electric_smelter
	execute as @e[type=glow_item_frame,tag=SE_ElectricBrewing] at @s if score @s energy.storage matches 1.. run function simplenergy:work/electric_brewing_stand
	execute as @e[type=marker,tag=SE_Furnaces] at @s run function simplenergy:work/all_furnace
