#Kill undesired Items & Replace the item to keep Motion
	kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},limit=1,sort=nearest,distance=..1]
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:brewing_stand"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012204
kill @s
function energy_flux:wire_update
