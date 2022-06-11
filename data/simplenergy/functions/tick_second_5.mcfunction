
#Others
	scoreboard players set #second_5 simplenergy.data 0
	execute store result score #day_time simplenergy.data run time query daytime
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all

#Balancing
	execute as @e[type=#energy:valid_block_entities,tag=simplenergy.balancing] at @s if entity @s[tag=!simplenergy.balance,tag=!simplenergy.balanced] run function simplenergy:balance/all
	tag @e[type=glow_item_frame,tag=simplenergy.balanced] remove simplenergy.balanced

