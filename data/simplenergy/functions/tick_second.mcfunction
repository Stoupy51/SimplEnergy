
#Others
	scoreboard players set #second simplenergy.data 0
	execute as @e[type=glow_item_frame,tag=simplenergy.destroyer,tag=!simplenergy.item_destroy,sort=random] at @s run function simplenergy:utils/tick_second_glows
	execute as @a[sort=random] at @s run function simplenergy:utils/tick_second_players
