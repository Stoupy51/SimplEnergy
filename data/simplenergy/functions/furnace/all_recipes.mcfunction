
#Called by function tag #simplenergy:furnace_recipes

#Simplunium Ore
	execute if score found simplenergy.data matches 0 store result score found simplenergy.data if data storage simplenergy:items furnace.input_ctc{id:"simplunium_ore"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

#Raw Simplunium
	execute if score found simplenergy.data matches 0 store result score found simplenergy.data if data storage simplenergy:items furnace.input_ctc{id:"raw_simplunium"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot
