#Generators
	execute as @e[type=glow_item_frame,tag=SimplEnergy_CauldronGenerator] at @s unless block ~ ~ ~ #minecraft:cauldrons run function simplenergy:destroy/cauldron_generator
	execute as @e[type=glow_item_frame,tag=SimplEnergy_FurnaceGenerator] at @s unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/furnace_generator
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SolarPanel] at @s unless block ~ ~ ~ minecraft:daylight_detector run function simplenergy:destroy/solar_panel

#Cables
	execute as @e[type=item_frame,tag=SimplEnergy_SimpleCable,predicate=!simplenergy:check_player_head] at @s run function simplenergy:destroy/simple_cable
	execute as @e[type=item_frame,tag=SimplEnergy_AdvancedCable,predicate=!simplenergy:check_player_head] at @s run function simplenergy:destroy/advanced_cable
	execute as @e[type=item_frame,tag=SimplEnergy_EliteCable,predicate=!simplenergy:check_player_head] at @s run function simplenergy:destroy/elite_cable

#Batteries
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SimpleBattery] at @s unless block ~ ~ ~ minecraft:cobbled_deepslate run function simplenergy:destroy/simple_battery
	execute as @e[type=glow_item_frame,tag=SimplEnergy_AdvancedBattery] at @s unless block ~ ~ ~ minecraft:gold_block run function simplenergy:destroy/advanced_battery
	execute as @e[type=glow_item_frame,tag=SimplEnergy_EliteBattery] at @s unless block ~ ~ ~ minecraft:iron_block run function simplenergy:destroy/elite_battery

#Power Consumers
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricFurnace] at @s unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/electric_furnace
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricSmelter] at @s unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/electric_smelter
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricBrewing] at @s unless block ~ ~ ~ minecraft:brewing_stand run function simplenergy:destroy/electric_brewing_stand
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricLamp] at @s unless block ~ ~ ~ minecraft:redstone_lamp unless block ~ ~ ~ minecraft:glowstone run function simplenergy:destroy/electric_lamp

#Others
	execute as @e[type=glow_item_frame,tag=SimplEnergy_CraftingTable] at @s unless block ~ ~ ~ minecraft:barrel run function simplenergy:destroy/simple_crafting_table
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SimpluniumBlock] at @s unless block ~ ~ ~ minecraft:iron_block run function simplenergy:destroy/simplunium_block
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SimpluniumOre,predicate=!simplenergy:check_deepslate_coal_ore] at @s run function simplenergy:destroy/simplunium_ore
