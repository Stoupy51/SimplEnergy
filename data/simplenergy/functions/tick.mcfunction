
#Timer & Other
	execute as @a at @s run function simplenergy:opti/tick_players
	scoreboard players add #second simplenergy.data 1
	scoreboard players add #tick_2 simplenergy.data 1
	execute if score #tick_2 simplenergy.data matches 2.. run function simplenergy:tick_2
	execute if score #second simplenergy.data matches 20.. run function simplenergy:tick_second
	execute as @e[type=glow_item_frame,tag=simplenergy.tick_glows,sort=random] at @s run function simplenergy:opti/tick_glows
