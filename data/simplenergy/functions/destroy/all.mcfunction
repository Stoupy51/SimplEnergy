
# Materials
execute if entity @s[tag=simplenergy.simplunium_ore] unless block ~ ~ ~ polished_deepslate run function simplenergy:destroy/simplunium_ore
execute if entity @s[tag=simplenergy.deepslate_simplunium_ore] unless block ~ ~ ~ polished_deepslate run function simplenergy:destroy/deepslate_simplunium_ore
execute if entity @s[tag=simplenergy.raw_simplunium_block] unless block ~ ~ ~ raw_iron_block run function simplenergy:destroy/raw_simplunium_block
execute if entity @s[tag=simplenergy.simplunium_block] unless block ~ ~ ~ iron_block run function simplenergy:destroy/simplunium_block

# Batteries
execute if entity @s[tag=simplenergy.simple_battery] unless block ~ ~ ~ cobbled_deepslate run function simplenergy:destroy/simple_battery
execute if entity @s[tag=simplenergy.advanced_battery] unless block ~ ~ ~ gold_block run function simplenergy:destroy/advanced_battery
execute if entity @s[tag=simplenergy.elite_battery] unless block ~ ~ ~ iron_block run function simplenergy:destroy/elite_battery

# Generators
execute if entity @s[tag=simplenergy.cauldron_generator] unless block ~ ~ ~ #minecraft:cauldrons run function simplenergy:destroy/cauldron_generator
execute if entity @s[tag=simplenergy.furnace_generator] unless block ~ ~ ~ furnace run function simplenergy:destroy/furnace_generator
execute if entity @s[tag=simplenergy.solar_panel] unless block ~ ~ ~ daylight_detector run function simplenergy:destroy/solar_panel

# Power Consumers
execute if entity @s[tag=simplenergy.electric_furnace] unless block ~ ~ ~ furnace run function simplenergy:destroy/electric_furnace
execute if entity @s[tag=simplenergy.electric_smelter] unless block ~ ~ ~ furnace run function simplenergy:destroy/electric_smelter
execute if entity @s[tag=simplenergy.electric_brewing_stand] unless block ~ ~ ~ brewing_stand run function simplenergy:destroy/electric_brewing_stand
execute if entity @s[tag=simplenergy.electric_lamp] unless block ~ ~ ~ redstone_lamp unless block ~ ~ ~ glowstone run function simplenergy:destroy/electric_lamp

# Cables
execute if entity @s[tag=simplenergy.simple_cable] unless block ~ ~ ~ player_head run function simplenergy:destroy/simple_cable
execute if entity @s[tag=simplenergy.advanced_cable] unless block ~ ~ ~ player_head run function simplenergy:destroy/advanced_cable
execute if entity @s[tag=simplenergy.elite_cable] unless block ~ ~ ~ player_head run function simplenergy:destroy/elite_cable

