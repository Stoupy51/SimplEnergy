function energy:v1.0/energy/rate_end
scoreboard players add TotalCount energy.transfer_queue 1
scoreboard players operation @s energy.transfer_queue = TotalCount energy.transfer_queue
scoreboard players operation @s energy.transfer_queue %= 20 energy.transfer_queue
scoreboard players add @s[scores={energy.transfer_queue=0}] energy.transfer_queue 1
