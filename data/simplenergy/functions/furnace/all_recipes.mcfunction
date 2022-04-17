
#Called by function tag #simplenergy:furnace_recipes

#Simplunium Ore
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"simplunium_ore"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

#Deepslate Simplunium Ore
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"deepslate_simplunium_ore"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

#Raw Simplunium
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"raw_simplunium"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

#Simplunium Armor & Tools
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{traits:{"metal/simplunium":1b,"armor":1b}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_nugget
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{traits:{"metal/simplunium":1b,"tool":1b}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_nugget
