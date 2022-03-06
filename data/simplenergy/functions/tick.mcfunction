#Timer
	scoreboard players add Second simplenergy.data 1
	scoreboard players add tick_2 simplenergy.data 1
	execute if score tick_2 simplenergy.data matches 2.. run function simplenergy:tick_2
	execute if score Second simplenergy.data matches 20.. run function simplenergy:tick_second

#Others
	execute as @e[type=glow_item_frame,tag=simplenergy.destroyer] at @s run function simplenergy:opti/tick_glows
	execute as @e[type=marker,tag=simplenergy.furnace] at @s run function simplenergy:work/all_furnace
