execute unless score @s energy.storage matches 800.. run function simplenergy:work/furnace_generator
#Update gui depends on BurnTime
	data modify block ~ ~ ~ Items insert -1 value {Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011999,CustomItem:1b,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
	execute unless block ~ ~ ~ minecraft:furnace{BurnTime:0s} run data modify block ~ ~ ~ Items[0].tag.CustomModelData set value 2011975

	execute if block ~ ~ ~ minecraft:furnace{BurnTime:0s} run data modify entity @s Item.tag.CustomModelData set value 2012001
	execute unless block ~ ~ ~ minecraft:furnace{BurnTime:0s} run data modify entity @s Item.tag.CustomModelData set value 2012002

#Small Fix by the way
	data modify block ~ ~ ~ CookTimeTotal set value -200s
	data modify block ~ ~ ~ CookTime set value 0s
