
#Storage manipulation
	data modify storage simplenergy:main furnace set from block ~ ~ ~
	execute store result score #cook_time simplenergy.data run data get storage simplenergy:main furnace.CookTime
	execute store result score #output_cmd simplenergy.data run data get storage simplenergy:main furnace.Items[{Slot:2b}].tag.CustomModelData
	data modify storage simplenergy:main furnace.input_ctc set from storage simplenergy:main furnace.Items[{Slot:0b}].tag.ctc

	scoreboard players set #found simplenergy.data 0
	data modify block -29999999 0 2013 Items set from storage simplenergy:main furnace.Items
	execute positioned -29999999 0 2013 run function #simplenergy:furnace_recipes
	execute store result score #excepted_cmd simplenergy.data run data get block -29999999 0 2013 Items[{Slot:3b}].tag.CustomModelData

#Disable cooking if not permitted
	scoreboard players set #reset simplenergy.data 0
	execute if score #found simplenergy.data matches 0 run function #simplenergy:disable_cooking
	execute if score #reset simplenergy.data matches 0 store result score #reset simplenergy.data unless score #output_cmd simplenergy.data matches 0 unless score #output_cmd simplenergy.data = #excepted_cmd simplenergy.data
	execute if score #reset simplenergy.data matches 1 run data modify block ~ ~ ~ CookTime set value 0s

#Otherwise, continue
	execute if score #reset simplenergy.data matches 0 run function simplenergy:furnace/cook
