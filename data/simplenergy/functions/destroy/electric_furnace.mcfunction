#Kill undesired Items & Replace the item to keep Motion
	kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1s}}},limit=1,sort=nearest,distance=..1]
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012200
kill @s
execute as @e[type=#energy_flux:entities,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update
