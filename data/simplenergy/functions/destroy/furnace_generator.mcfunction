#Kill undesired items and replace the item
	kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1s}}},limit=1,sort=nearest,distance=..1]
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012001
kill @s
execute as @e[type=#energy_flux:wires,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update
