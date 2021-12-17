
#if defined transfer rate < current capacity, assign capacity as rate and cascade to entire network
execute if score @s energy.transfer_rate < @s energy.transfer_capacity run scoreboard players operation #predicate energy.data = @s energy.network_id
execute if score @s energy.transfer_rate < @s energy.transfer_capacity run scoreboard players operation @e[type=#energy:valid_block_entities,tag=energy.cable,predicate=energy:v1.0/equals_network_id] energy.transfer_capacity = @s energy.transfer_rate
