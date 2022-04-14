
#Others
	scoreboard players set #second simplenergy.data 0
	execute store result score #day_time simplenergy.data run time query daytime
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all
	execute as @e[type=glow_item_frame,tag=simplenergy.destroyer] at @s run function simplenergy:opti/tick_second_glows
	tag @e[type=glow_item_frame,tag=simplenergy.balanced] remove simplenergy.balanced
	execute as @a at @a run function simplenergy:opti/tick_second_players
	execute as @e[type=marker,tag=simplenergy.furnace] at @s unless block ~ ~ ~ #simplenergy:furnaces run kill @s
