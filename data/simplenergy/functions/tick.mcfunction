
#Timer & Other
	execute as @a at @s run function simplenergy:utils/tick_players
	scoreboard players add #second simplenergy.data 1
	scoreboard players add #second_5 simplenergy.data 1
	scoreboard players add #tick_2 simplenergy.data 1
	execute if score #tick_2 simplenergy.data matches 3.. run function simplenergy:tick_2
	execute if score #second simplenergy.data matches 20.. run function simplenergy:tick_second
	execute if score #second_5 simplenergy.data matches 90.. run function simplenergy:tick_second_5
	execute as @e[type=glow_item_frame,tag=simplenergy.tick_glows,sort=random] at @s run function simplenergy:utils/tick_glows
	execute as @e[type=item,tag=!simplenergy.checked] at @s run function simplenergy:destroy/item_check/
