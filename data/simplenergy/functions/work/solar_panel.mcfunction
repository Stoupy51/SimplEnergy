
# Produce Energy depending on the power of daylight sensor
execute if predicate simplenergy:check_daylight_power run scoreboard players add @s energy.storage 4
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

