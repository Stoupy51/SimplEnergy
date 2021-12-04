#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012003
kill @s
function energy_flux:wire_update
