
# Kill undesired items and replace the item
kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{simplenergy:{texture_item:1b}}}},limit=1,sort=nearest,distance=..1]
data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.furnace_generator

# Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s

