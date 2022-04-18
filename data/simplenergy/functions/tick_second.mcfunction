
#Others
	scoreboard players set #second simplenergy.data 0
	execute store result score #day_time simplenergy.data run time query daytime
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all
	execute as @e[type=glow_item_frame,tag=simplenergy.destroyer,sort=random] at @s run function simplenergy:opti/tick_second_glows
	execute as @a[sort=random] at @s run function simplenergy:opti/tick_second_players
	kill @e[type=marker,tag=simplenergy.furnace,predicate=!simplenergy:check_furnaces]

#Balancing
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.balancing] at @s if entity @s[tag=!simplenergy.balance,tag=!simplenergy.balanced] run function simplenergy:balance/all
	tag @e[type=glow_item_frame,tag=simplenergy.balanced] remove simplenergy.balanced

