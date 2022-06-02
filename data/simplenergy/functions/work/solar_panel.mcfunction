
#Produce Energy depends on Power of daylight sensor
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if predicate simplenergy:check_daylight_power
execute if score #success simplenergy.data matches 0 run scoreboard players add @s energy.storage 1
execute if score #success simplenergy.data matches 1 run scoreboard players add @s energy.storage 4

execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
