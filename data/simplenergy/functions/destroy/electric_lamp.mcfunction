
# Replace the item to keep Motion
scoreboard players set #success simplenergy.data 0
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data run data modify entity @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.electric_lamp
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data run data modify entity @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.electric_lamp
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data run data modify entity @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.electric_lamp

# Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s

