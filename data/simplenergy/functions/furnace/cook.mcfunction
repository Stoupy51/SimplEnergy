
#Choose Type Of Furnace and do recipes
	execute store result score #furnace_type simplenergy.data if block ~ ~ ~ blast_furnace
	execute if score #furnace_type simplenergy.data matches 0 if score #cook_time simplenergy.data matches 190.. if score #found simplenergy.data matches 1 run function simplenergy:furnace/shulker_manipulation
	execute if score #furnace_type simplenergy.data matches 1 if score #cook_time simplenergy.data matches 90.. if score #found simplenergy.data matches 1 run function simplenergy:furnace/shulker_manipulation

#Apply new storage values
	data modify block ~ ~ ~ Items set from storage simplenergy:main furnace.Items
