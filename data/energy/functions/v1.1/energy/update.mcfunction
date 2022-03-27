
function energy:v1.1/energy/change_rate
execute if entity @s[scores={energy.storage=1..},tag=energy.send] run function energy:v1.1/energy/queue/setup
