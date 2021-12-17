
schedule function energy:v1.0/tick 20t replace

#setup network transfer capacity
scoreboard players set @e[type=#energy:valid_block_entities,tag=energy.cable] energy.transfer_capacity 2147483647
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.0/energy/setup

#trigger send energy
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_start
execute as @e[type=#energy:valid_block_entities,tag=energy.send] at @s run function energy:v1.0/energy/send
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_end
