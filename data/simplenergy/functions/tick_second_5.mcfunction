
#Others
	scoreboard players set #second_5 simplenergy.data 0
	execute store result score #day_time simplenergy.data run time query daytime
	execute as @e[tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all

#Balancing
	execute as @e[tag=simplenergy.balancing,scores={energy.storage=20..}] at @s[tag=!simplenergy.balance,tag=!simplenergy.balanced] run function simplenergy:balance/all
	tag @e[tag=simplenergy.balanced] remove simplenergy.balanced

