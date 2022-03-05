
scoreboard players set @s energy.max_storage 6400
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
tag @s remove SimplEnergy_SetNew
#Call on a new machine to initialize its connections
function energy:v1/api/init_machine
