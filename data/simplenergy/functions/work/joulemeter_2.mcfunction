tag @s add SE_Temp
execute as @e[type=#energy:valid_block_entities,scores={energy.max_storage=1..},limit=1,sort=nearest,distance=..1.5] run tellraw @a[tag=SE_Temp] [{"text":"Energy stored : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"energy.storage"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"energy.max_storage"},"italic":false,"color":"yellow"},{"text":" kJ"}]
tag @s remove SE_Temp
