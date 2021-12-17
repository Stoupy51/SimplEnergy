tag @s remove EF_Use
execute as @s[tag=EF_CanSend] run tag @s add energy.send
execute as @s[tag=EF_CanReceive] run tag @s add energy.receive
execute as @s[tag=EF_Cable] run tag @s add energy.cable

scoreboard players operation @s energy.storage = @s EF_kJ
scoreboard players operation @s energy.max_storage = @s EF_kJmax
scoreboard players operation @s energy.transfer_rate = @s EF_kW

tag @s remove EF_CanSend
tag @s remove EF_CanReceive
tag @s remove EF_Cable

scoreboard players reset @s EF_kJ
scoreboard players reset @s EF_kJmax
scoreboard players reset @s EF_kW
