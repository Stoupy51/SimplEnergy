
## Get and Search devices with same Energy Storage from SimplEnergy

# Copy max storage from device to scoreboard & add balance tags
scoreboard players operation #temp simplenergy.data = @s energy.max_storage
tag @s add simplenergy.balance
tag @s add simplenergy.balanced

# Search for devices with same energy storage that are not balanced and directly next to the device
scoreboard players set #success simplenergy.data 0
execute store result score #success simplenergy.data align xyz positioned ~ ~1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~ ~-1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~ ~ ~1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~ ~ ~-1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~-1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
execute if score #success simplenergy.data matches 1 run function simplenergy:balance/balance

# Remove balance tags
tag @e[tag=simplenergy.balance] remove simplenergy.balance

