
# Collect power from nearby blocks recursively
scoreboard players set #count simplenergy.data 1
scoreboard players operation #amount simplenergy.data = @s energy.storage
execute align xyz positioned ~ ~1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~ ~-1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~ ~ ~1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~ ~ ~-1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~-1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found

# Redistributes Energy to other batteries
scoreboard players operation #balance simplenergy.data = #amount simplenergy.data
scoreboard players operation #balance simplenergy.data /= #count simplenergy.data
scoreboard players operation #amount simplenergy.data %= #count simplenergy.data
scoreboard players operation @e[tag=simplenergy.balance] energy.storage = #balance simplenergy.data
scoreboard players operation @s energy.storage += #amount simplenergy.data
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

