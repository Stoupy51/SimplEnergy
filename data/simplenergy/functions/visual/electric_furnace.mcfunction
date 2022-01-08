execute if score @s energy.storage matches 10.. run function simplenergy:work/electric_furnace
#Update gui depends on CookTime
	execute store result score CookTime SimplEnergy_Data run data get block ~ ~ ~ CookTime
	execute if score @s energy.storage matches ..0 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 1..200 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011997,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 201..400 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011996,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 401..600 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011995,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 601..799 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011994,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
	execute if score @s energy.storage matches 800.. run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011993,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}

	execute if score CookTime SimplEnergy_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012200
	execute unless score CookTime SimplEnergy_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012201
