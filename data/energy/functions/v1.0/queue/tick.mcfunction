
execute as @e[type=#energy:valid_block_entities,predicate=energy:v1.0/equals_queue_progress] run function energy:v1.0/queue/send
scoreboard players add Progress energy.transfer_queue 1

schedule function energy:v1.0/queue/tick 1t replace
