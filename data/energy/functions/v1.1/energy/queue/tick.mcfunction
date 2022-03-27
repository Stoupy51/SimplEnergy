
execute as @e[type=#energy:valid_block_entities,tag=energy.send,predicate=energy:v1.1/equals_queue_progress] at @s run function energy:v1.1/energy/process_networks
scoreboard players add #progress energy.update_queue 1

schedule function energy:v1.1/energy/queue/tick 1t replace
