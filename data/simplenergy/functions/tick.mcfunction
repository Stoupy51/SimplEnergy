
#Timer
	scoreboard players add #second simplenergy.data 1
	scoreboard players add #tick_2 simplenergy.data 1
	execute if score #tick_2 simplenergy.data matches 2.. run function simplenergy:tick_2
	execute if score #second simplenergy.data matches 20.. run function simplenergy:tick_second

#Others
	execute as @e[type=glow_item_frame,tag=simplenergy.tick_glows] at @s run function simplenergy:opti/tick_glows
	execute as @e[type=marker,tag=simplenergy.furnace] at @s run function simplenergy:furnace/tick
