#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012899
kill @e[type=experience_orb,distance=..1]
kill @s
