function energy:v1.0/energy/rate_end
scoreboard players add TotalCount energy.transfer_queue 1
scoreboard players operation @s energy.transfer_queue = TotalCount energy.transfer_queue
