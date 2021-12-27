
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_start
execute as @e[type=#energy:valid_block_entities,tag=energy.send] at @s run function energy:v1.0/energy/send
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_end
