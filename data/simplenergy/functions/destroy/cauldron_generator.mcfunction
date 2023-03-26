
# Replace the item to keep Motion
data modify entity @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.cauldron_generator

# Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s

