#Update gui depends on CookTime
	execute store result score #cook_time simplenergy.data run data get block ~ ~ ~ CookTime
	execute if score @s energy.storage matches ..0 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 1..1600 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011941,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 1601..3200 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011940,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 3201..4800 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011939,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 4801..6399 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011938,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 6400.. run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011937,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}

	execute if score #cook_time simplenergy.data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012202
	execute unless score #cook_time simplenergy.data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012203
