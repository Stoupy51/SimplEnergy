
scoreboard players reset * energy.transfer_queue
scoreboard players set TotalCount energy.transfer_queue 0
scoreboard players set Progress energy.transfer_queue 1
scoreboard players set 20 energy.transfer_queue 20
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=1..},tag=!energy.cable] run function energy:v1.0/queue/setup
scoreboard players operation TotalCount energy.transfer_queue /= 20 energy.transfer_queue
scoreboard players operation @e[type=#energy:valid_block_entities,scores={energy.storage=1..}] energy.transfer_queue /= TotalCount energy.transfer_queue
