
#Choose Type Of Furnace and do recipes
	scoreboard players set found simplenergy.data 0
	execute store result score furnace_type simplenergy.data if block ~ ~ ~ blast_furnace
	execute if score furnace_type simplenergy.data matches 0 if score cook_time simplenergy.data matches 190.. positioned -29999999 0 2013 run function #simplenergy:furnace_recipes
	execute if score furnace_type simplenergy.data matches 1 if score cook_time simplenergy.data matches 90.. positioned -29999999 0 2013 run function #simplenergy:furnace_recipes

#Apply new storage values
	execute if score found simplenergy.data matches 1 run function simplenergy:furnace/shulker_manipulation
	data modify block ~ ~ ~ Items set from storage simplenergy:items furnace.Items
