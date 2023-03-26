
# Replace the item
data modify entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.solar_panel

# Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s

