
#Generators
	execute if entity @s[tag=simplenergy.cauldron_generator] unless block ~ ~ ~ #minecraft:cauldrons run function simplenergy:destroy/cauldron_generator
	execute if entity @s[tag=simplenergy.furnace_generator] unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/furnace_generator
	execute if entity @s[tag=simplenergy.solar_panel] unless block ~ ~ ~ minecraft:daylight_detector run function simplenergy:destroy/solar_panel

#Cables
	execute if entity @s[tag=simplenergy.simple_cable] unless block ~ ~ ~ minecraft:player_head run function simplenergy:destroy/simple_cable
	execute if entity @s[tag=simplenergy.advanced_cable] unless block ~ ~ ~ minecraft:player_head run function simplenergy:destroy/advanced_cable
	execute if entity @s[tag=simplenergy.elite_cable] unless block ~ ~ ~ minecraft:player_head run function simplenergy:destroy/elite_cable

#Batteries
	execute if entity @s[tag=simplenergy.simple_battery] unless block ~ ~ ~ minecraft:cobbled_deepslate run function simplenergy:destroy/simple_battery
	execute if entity @s[tag=simplenergy.advanced_battery] unless block ~ ~ ~ minecraft:gold_block run function simplenergy:destroy/advanced_battery
	execute if entity @s[tag=simplenergy.elite_battery] unless block ~ ~ ~ minecraft:iron_block run function simplenergy:destroy/elite_battery

#Power Consumers
	execute if entity @s[tag=simplenergy.electric_furnace] unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/electric_furnace
	execute if entity @s[tag=simplenergy.electric_smelter] unless block ~ ~ ~ minecraft:furnace run function simplenergy:destroy/electric_smelter
	execute if entity @s[tag=simplenergy.electric_brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run function simplenergy:destroy/electric_brewing_stand
	execute if entity @s[tag=simplenergy.electric_lamp] unless block ~ ~ ~ minecraft:redstone_lamp unless block ~ ~ ~ minecraft:glowstone run function simplenergy:destroy/electric_lamp

#Others
	execute if entity @s[tag=simplenergy.simplunium_block] unless block ~ ~ ~ minecraft:iron_block run function simplenergy:destroy/simplunium_block
	execute if entity @s[tag=simplenergy.simplunium_ore] unless block ~ ~ ~ minecraft:deepslate_coal_ore run function simplenergy:destroy/simplunium_ore
