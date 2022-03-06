#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:deepslate_coal_ore"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012899
	
	execute store result score Count simplenergy.data run data get entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item.Count
	execute store result score Temp simplenergy.data run data get entity @s UUID[1]
	scoreboard players operation Temp simplenergy.data %= 4 simplenergy.data
	scoreboard players add Temp simplenergy.data 1
	scoreboard players operation Count simplenergy.data *= Temp simplenergy.data
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012896
	execute store result entity @e[type=item,nbt={Item:{tag:{simplenergy:{raw_simplunium:1b}}}},limit=1,sort=nearest,distance=..1] Item.Count byte 1 run scoreboard players get Count simplenergy.data
kill @s
