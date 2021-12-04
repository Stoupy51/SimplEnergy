#Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012000
kill @s
function energy_flux:wire_update
