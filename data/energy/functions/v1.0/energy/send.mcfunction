
#up
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_up
execute if score @s energy.transfer_remaining matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#down
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_down
execute if score @s energy.transfer_remaining matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#north
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_north
execute if score @s energy.transfer_remaining matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#south
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_south
execute if score @s energy.transfer_remaining matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#east
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_east
execute if score @s energy.transfer_remaining matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2

#west
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_west
execute if score @s energy.transfer_remaining matches 1.. unless score #energy.network_id energy.data matches 0 run function energy:v1.0/energy/send_2
