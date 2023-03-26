
# Kill undesired items and replace the item
data modify entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.simple_battery

# Update the Battery to keep Energy
scoreboard players operation #storage simplenergy.data = @s energy.storage
execute if score #storage simplenergy.data matches 1.. as @e[type=item,nbt={Item:{tag:{energy:{}}}},limit=1,sort=nearest,distance=..1] run function simplenergy:destroy/keep_energy

# Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s

