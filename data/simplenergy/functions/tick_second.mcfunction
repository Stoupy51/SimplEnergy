#Others
	scoreboard players set Second simplenergy.data 0
	execute store result score DayTime simplenergy.data run time query daytime
	execute as @e[type=glow_item_frame,tag=simplenergy.balancing,limit=1] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=simplenergy.destroyer] at @s run function simplenergy:opti/tick_second_glows
	execute as @a at @a run function simplenergy:opti/tick_second_players
	execute as @e[type=marker,tag=simplenergy.furnace] at @s unless block ~ ~ ~ #simplenergy:furnaces run kill @s
