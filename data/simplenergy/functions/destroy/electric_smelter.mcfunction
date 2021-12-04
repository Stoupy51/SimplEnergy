#Kill undesired Items & Replace the item to keep Motion
	kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},limit=1,sort=nearest,distance=..1]
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012202
kill @s
function energy_flux:wire_update
