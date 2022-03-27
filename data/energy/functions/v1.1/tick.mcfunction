
#trigger update for queue system
scoreboard players reset * energy.update_queue
scoreboard players set #progress energy.update_queue 0
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] run function energy:v1.1/energy/update
execute as @e[type=#energy:valid_block_entities,tag=energy.processed] at @s run function energy:v1.1/energy/remove_tags
function energy:v1.1/energy/queue/tick



schedule function energy:v1.1/tick 20t replace
