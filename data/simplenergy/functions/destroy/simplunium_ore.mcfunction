#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:deepslate_coal_ore"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012899
	
	execute store result score Count SimplEnergy_Data run data get entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item.Count
	execute store result score Temp SimplEnergy_Data run data get entity @s UUID[1]
	scoreboard players operation Temp SimplEnergy_Data %= 4 SimplEnergy_Data
	scoreboard players add Temp SimplEnergy_Data 1
	scoreboard players operation Count SimplEnergy_Data *= Temp SimplEnergy_Data
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012896
	execute store result entity @e[type=item,nbt={Item:{tag:{SimplEnergy_RawSimplunium:1b}}},limit=1,sort=nearest,distance=..1] Item.Count byte 1 run scoreboard players get Count SimplEnergy_Data
kill @s
