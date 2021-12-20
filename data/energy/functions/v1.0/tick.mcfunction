
schedule function energy:v1.0/queue/tick 1t replace
schedule function energy:v1.0/tick 20t replace

#setup network transfer capacity
scoreboard players set @e[type=#energy:valid_block_entities,tag=energy.cable] energy.transfer_capacity 2147483647
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.0/energy/setup

#setup a queue to spread resource demanding
scoreboard players reset * energy.transfer_queue
scoreboard players set TotalCount energy.transfer_queue 0
scoreboard players set Progress energy.transfer_queue 0
scoreboard players set 20 energy.transfer_queue 20
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=1..},tag=!energy.cable] run function energy:v1.0/queue/setup
scoreboard players operation TotalCount energy.transfer_queue /= 20 energy.transfer_queue
scoreboard players operation @e[type=#energy:valid_block_entities,scores={energy.storage=1..}] energy.transfer_queue /= TotalCount energy.transfer_queue
