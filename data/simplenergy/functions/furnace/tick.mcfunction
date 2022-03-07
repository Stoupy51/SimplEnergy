
#Storage manipulation
	data modify storage simplenergy:items furnace set from block ~ ~ ~
	execute store result score cook_time simplenergy.data run data get storage simplenergy:items furnace.CookTime
	execute store result score output_cmd simplenergy.data run data get storage simplenergy:items furnace.Items[{Slot:2b}].tag.CustomModelData
	scoreboard players operation input_cmd simplenergy.data = @s simplenergy.data_2

#Choose Type Of Furnace and use the correct recipe
	execute if score cook_time simplenergy.data matches ..8 run function #simplenergy:check_recipes_used

#Remember the input item_id for the next check
	execute store result score @s simplenergy.data_2 run data get storage simplenergy:items furnace.Items[{Slot:0b}].tag.CustomModelData

#Disable cooking if not permitted
	scoreboard players set reset simplenergy.data 0
	execute unless data storage simplenergy:items furnace.Items[{Slot:0b}].tag.ctc.traits."cookable" run function #simplenergy:disable_cooking
	execute if score reset simplenergy.data matches 1 run data modify block ~ ~ ~ CookTime set value 0s

#Fix hopper issue & Apply new storage values
	execute if block ~ ~ ~ furnace if score cook_time simplenergy.data matches 199 run function simplenergy:furnace/has_furnace
	execute if block ~ ~ ~ blast_furnace if score cook_time simplenergy.data matches 99 run function simplenergy:furnace/has_blast_furnace
	data modify block ~ ~ ~ Items set from storage simplenergy:items furnace.Items
