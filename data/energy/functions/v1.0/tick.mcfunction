
schedule function energy:v1.0/queue/tick 1t replace
schedule function energy:v1.0/tick 20t replace

#setup network transfer capacity
scoreboard players set @e[type=#energy:valid_block_entities,tag=energy.cable] energy.transfer_capacity 2147483647
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.0/energy/setup

#trigger send energy
scoreboard players reset * energy.transfer_queue
scoreboard players set TotalCount energy.transfer_queue 0
scoreboard players set Progress energy.transfer_queue 1
scoreboard players set 20 energy.transfer_queue 20
execute as @e[type=#energy:valid_block_entities,scores={energy.max_storage=1..},tag=!energy.cable] run function energy:v1.0/queue/setup
execute as @e[type=#energy:valid_block_entities,tag=energy.send] run function energy:v1.0/energy/copy_scores
