#Timer
	scoreboard players add Second SimplEnergy_Data 1
	scoreboard players add tick_2 SimplEnergy_Data 1
	execute if score tick_2 SimplEnergy_Data matches 2.. run function simplenergy:tick_2
	execute if score Second SimplEnergy_Data matches 20.. run function simplenergy:tick_second

#Others
	execute as @e[type=glow_item_frame,tag=SimplEnergy_Destroyer] at @s run function simplenergy:opti/tick_glows
	execute as @e[type=marker,tag=SimplEnergy_Furnaces] at @s run function simplenergy:work/all_furnace
