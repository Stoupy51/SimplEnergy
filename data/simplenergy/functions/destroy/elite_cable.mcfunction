#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:player_head"}},limit=1,sort=nearest,distance=..1,nbt={Item:{tag:{SkullOwner:{Id:[I;-1416541,25415515,-3515615,-4156415]}}}}] Item set from storage simplenergy:items 2012500
#Call on a cable when broken to remove its connections
function energy:v1/api/break_cable
kill @s