
#Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012205
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012205
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012205
#Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s
