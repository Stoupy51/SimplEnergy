
scoreboard players add #position energy.update_queue 1
scoreboard players operation #position energy.update_queue %= #20 energy.data
scoreboard players operation @s energy.update_queue = #position energy.update_queue
