
execute if score #queue_process energy.data matches 1 run schedule function energy:v1.0/queue/tick 1t replace
schedule function energy:v1.0/tick 20t replace

#setup network transfer capacity
scoreboard players set @e[type=#energy:valid_block_entities,tag=energy.cable] energy.transfer_capacity 2147483647
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.0/energy/setup

#Transfer Options
	#setup a queue to spread resource demanding
	execute if score #queue_process energy.data matches 1 run function energy:v1.0/queue/init
	#trigger send energy
	execute unless score #queue_process energy.data matches 1 run function energy:v1.0/normal_transfer
