#Generators
	execute if entity @s[tag=SimplEnergy_CauldronGenerator] unless block ~ ~ ~ #minecraft:cauldrons run function simplenergy:destroy/cauldron_generator
	execute if entity @s[tag=SimplEnergy_FurnaceGenerator] unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/furnace_generator
	execute if entity @s[tag=SimplEnergy_SolarPanel] unless block ~ ~ ~ minecraft:daylight_detector run function simplenergy:destroy/solar_panel

#Cables
	execute if entity @s[tag=SimplEnergy_SimpleCable,predicate=!simplenergy:check_player_head] run function simplenergy:destroy/simple_cable
	execute if entity @s[tag=SimplEnergy_AdvancedCable,predicate=!simplenergy:check_player_head] run function simplenergy:destroy/advanced_cable
	execute if entity @s[tag=SimplEnergy_EliteCable,predicate=!simplenergy:check_player_head] run function simplenergy:destroy/elite_cable

#Batteries
	execute if entity @s[tag=SimplEnergy_SimpleBattery] unless block ~ ~ ~ minecraft:cobbled_deepslate run function simplenergy:destroy/simple_battery
	execute if entity @s[tag=SimplEnergy_AdvancedBattery] unless block ~ ~ ~ minecraft:gold_block run function simplenergy:destroy/advanced_battery
	execute if entity @s[tag=SimplEnergy_EliteBattery] unless block ~ ~ ~ minecraft:iron_block run function simplenergy:destroy/elite_battery

#Power Consumers
	execute if entity @s[tag=SimplEnergy_ElectricFurnace] unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/electric_furnace
	execute if entity @s[tag=SimplEnergy_ElectricSmelter] unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/electric_smelter
	execute if entity @s[tag=SimplEnergy_ElectricBrewing] unless block ~ ~ ~ minecraft:brewing_stand run function simplenergy:destroy/electric_brewing_stand
	execute if entity @s[tag=SimplEnergy_ElectricLamp] unless block ~ ~ ~ minecraft:redstone_lamp unless block ~ ~ ~ minecraft:glowstone run function simplenergy:destroy/electric_lamp

#Others
	execute if entity @s[tag=SimplEnergy_CraftingTable] unless block ~ ~ ~ minecraft:barrel run function simplenergy:destroy/simple_crafting_table
	execute if entity @s[tag=SimplEnergy_SimpluniumBlock] unless block ~ ~ ~ minecraft:iron_block run function simplenergy:destroy/simplunium_block
	execute if entity @s[tag=SimplEnergy_SimpluniumOre,predicate=!simplenergy:check_deepslate_coal_ore] run function simplenergy:destroy/simplunium_ore

kill @s[tag=SimplEnergy_SimpleCraftingTable]
