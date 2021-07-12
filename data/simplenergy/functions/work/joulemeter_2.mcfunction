tag @s add SE_Temp
execute as @e[type=minecraft:glow_item_frame,tag=EF_Use,tag=!EF_Wire,limit=1,sort=nearest,distance=..1.5] run tellraw @a[tag=SE_Temp] [{"text":"Energy stored : ","color":"aqua"},{"score":{"name":"@s","objective":"EF_Joule"},"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"EF_EnergyStorage"},"color":"yellow"},{"text":" Joules"}]
tag @s remove SE_Temp
scoreboard players reset @s SE_JoulemeterUse
