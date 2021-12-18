
#copy scores
scoreboard players operation #predicate energy.data = #energy.network_id energy.data
scoreboard players operation #energy.cable_rate energy.data = @s energy.transfer_rate
scoreboard players operation #energy.cable_rate energy.data = @e[type=#energy:valid_block_entities,tag=energy.cable,predicate=energy:v1.0/equals_network_id,limit=1] energy.transfer_capacity

scoreboard players operation #energy.in energy.data = #energy.cable_rate energy.data
execute if score #energy.in energy.data > #energy.machine_rate energy.data run scoreboard players operation #energy.in energy.data = #energy.machine_rate energy.data

#transfer power
scoreboard players set #energy.out energy.data 0
execute if score #energy.in energy.data matches 1.. if entity @s[tag=energy.receive] as @e[type=#energy:valid_block_entities,tag=energy.receive,tag=!energy.send,predicate=energy:v1.0/has_network_id,sort=nearest] if score @s energy.storage < @s energy.max_storage run function energy:v1.0/energy/send_3
execute if score #energy.in energy.data matches 1.. if entity @s[tag=!energy.receive] as @e[type=#energy:valid_block_entities,tag=energy.receive,predicate=energy:v1.0/has_network_id,sort=nearest] if score @s energy.storage < @s energy.max_storage run function energy:v1.0/energy/send_3

#assign
scoreboard players operation #energy.machine_rate energy.data -= #energy.out energy.data
scoreboard players operation #energy.cable_rate energy.data -= #energy.out energy.data
execute if score #energy.out energy.data matches 1.. run scoreboard players operation @e[type=#energy:valid_block_entities,tag=energy.cable,predicate=energy:v1.0/equals_network_id] energy.transfer_capacity = #energy.cable_rate energy.data
