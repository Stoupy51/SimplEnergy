
tag @s remove energy.pool
execute if score #energy.out energy.data <= @s energy.transfer_remaining run function energy:v1.0/pool/assign_2
execute if score #energy.out energy.data > @s energy.transfer_remaining run function energy:v1.0/pool/assign_3
