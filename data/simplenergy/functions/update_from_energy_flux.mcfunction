tag @s remove EF_Use
execute as @s[tag=EF_CanSend] run tag @s add energy.send
execute as @s[tag=EF_CanReceive] run tag @s add energy.receive
execute as @s[tag=EF_Wire] run tag @s add energy.cable
execute as @s[tag=EF_Wire] run tag @s add SE_Cable

scoreboard players operation @s energy.storage = @s energy.storage
scoreboard players operation @s energy.max_storage = @s energy.storagemax
scoreboard players operation @s[tag=EF_Wire] energy.transfer_rate = @s EF_kW

tag @s remove EF_CanSend
tag @s remove EF_CanReceive
tag @s remove EF_Wire

scoreboard players reset @s energy.storage
scoreboard players reset @s energy.storagemax
scoreboard players reset @s EF_kW
