
scoreboard players operation @s energy.transfer_remaining = @s energy.transfer_rate
execute if score @s energy.storage < @s energy.transfer_remaining run scoreboard players operation @s energy.transfer_remaining = @s energy.storage
tag @s remove energy.is_connected
tag @s[tag=energy.cable_connected] add energy.is_connected
tag @s[tag=energy.consumer_connected] add energy.is_connected
