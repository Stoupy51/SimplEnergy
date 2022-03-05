#Others
	scoreboard players set Second SimplEnergy_Data 0
	execute store result score DayTime SimplEnergy_Data run time query daytime
	execute as @e[type=glow_item_frame,tag=SimplEnergy_Balancing,limit=1] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=SimplEnergy_Destroyer] at @s run function simplenergy:opti/tick_second_glows
	execute as @a at @a run function simplenergy:opti/tick_second_players
	execute as @e[type=marker,tag=SimplEnergy_Furnaces] at @s unless block ~ ~ ~ #simplenergy:furnaces run kill @s
