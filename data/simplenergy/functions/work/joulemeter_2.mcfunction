tag @s add SE_Temp
execute as @e[type=glow_item_frame,tag=EF_Use,tag=!EF_Wire,limit=1,sort=nearest,distance=..1.5] run tellraw @a[tag=SE_Temp] [{"text":"Energy stored : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"EF_kJ"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"EF_kJmax"},"italic":false,"color":"yellow"},{"text":" kJ"}]
tag @s remove SE_Temp
