
scoreboard players set @s energy.transfer_rate 60
tag @s remove simplenergy.new
#Call on a new cable to initialize its connections
function energy:v1/api/init_cable
