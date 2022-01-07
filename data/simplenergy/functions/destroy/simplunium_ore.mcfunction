#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:deepslate_coal_ore"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012899
	
	execute store result score Count SE_Data run data get entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item.Count
	execute store result score Temp SE_Data run data get entity @s UUID[1]
	scoreboard players operation Temp SE_Data %= 4 SE_Data
	scoreboard players add Temp SE_Data 1
	scoreboard players operation Count SE_Data *= Temp SE_Data
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012896
	execute store result entity @e[type=item,nbt={Item:{tag:{SE_RawSimplunium:1b}}},limit=1,sort=nearest,distance=..1] Item.Count byte 1 run scoreboard players get Count SE_Data
kill @s
