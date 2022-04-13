#Kill undesired Items & Replace the item to keep Motion
	kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{simplenergy:{texture_item:1b}}}},limit=1,sort=nearest,distance=..1]
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.2012200
#Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s
