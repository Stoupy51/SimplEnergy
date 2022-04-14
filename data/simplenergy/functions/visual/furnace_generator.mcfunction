
execute unless score @s energy.storage matches 800.. if data block ~ ~ ~ Items[{Slot:1b}] run function simplenergy:work/furnace_generator
#Update gui depends on BurnTime
	data modify block ~ ~ ~ Items insert -1 value {Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011999,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute unless data block ~ ~ ~ {BurnTime:0s} run data modify block ~ ~ ~ Items[0].tag.CustomModelData set value 2011975

	execute if data block ~ ~ ~ {BurnTime:0s} run data modify entity @s Item.tag.CustomModelData set value 2012001
	execute unless data block ~ ~ ~ {BurnTime:0s} run data modify entity @s Item.tag.CustomModelData set value 2012002

#Small Fix by the way
	data modify block ~ ~ ~ CookTimeTotal set value -200s
	data modify block ~ ~ ~ CookTime set value 0s
