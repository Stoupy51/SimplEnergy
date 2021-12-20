#Queued transfer
	function energy:v1.0/energy/rate_start
	execute at @s[tag=energy.send] run function energy:v1.0/energy/send
	function energy:v1.0/energy/rate_end
scoreboard players reset @s energy.transfer_queue
