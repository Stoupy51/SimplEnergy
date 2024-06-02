
# Tellraw Energy Display
tag @s add simplenergy.temp
execute as @e[scores={energy.max_storage=1..},limit=1,sort=nearest,distance=..1.5] run tellraw @a[tag=simplenergy.temp] [{"translate":"Energy stored : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"energy.storage"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"energy.max_storage"},"italic":false,"color":"yellow"},{"translate":" kJ\nChange Rate : "},{"score":{"name":"@s","objective":"energy.change_rate"},"italic":false,"color":"yellow"},{"translate":" kW"}]
tag @s remove simplenergy.temp

