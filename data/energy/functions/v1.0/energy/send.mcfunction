
#copy scores
scoreboard players operation #energy.machine_rate energy.data = @s energy.transfer_rate
execute if score @s energy.storage < #energy.machine_rate energy.data run scoreboard players operation #energy.machine_rate energy.data = @s energy.storage
scoreboard players operation #energy.machine_rate_max energy.data = #energy.machine_rate energy.data

#up
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_up
execute if score #energy.machine_rate energy.data matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#down
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_down
execute if score #energy.machine_rate energy.data matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#north
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_north
execute if score #energy.machine_rate energy.data matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#south
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_south
execute if score #energy.machine_rate energy.data matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#east
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_east
execute if score #energy.machine_rate energy.data matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#west
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_west
execute if score #energy.machine_rate energy.data matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#assign
scoreboard players operation #energy.machine_rate_max energy.data -= #energy.machine_rate energy.data
scoreboard players operation @s energy.storage -= #energy.machine_rate_max energy.data
