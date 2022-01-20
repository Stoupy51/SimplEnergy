#Queued transfer
	function energy:v1.0/energy/rate_start
	execute at @s[tag=energy.send,tag=energy.is_connected,scores={energy.transfer_remaining=1..}] run function energy:v1.0/energy/send
scoreboard players reset @s energy.transfer_queue
