
#> simplenergy:calls/smithed/shaped_recipes
#
# @within	#smithed.crafter:event/recipes
#

# Cauldron Generator
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:iron_ingot"}],1:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:redstone"},{Slot:2b,id:"minecraft:iron_ingot"}],2:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/cauldron_generator
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:iron_ingot"}],1:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:redstone"},{Slot:2b,id:"minecraft:iron_ingot"}],2:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/cauldron_generator

# Furnace Generator
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}],1:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:furnace"},{Slot:2b,id:"minecraft:iron_block"}],2:[{Slot:0b,id:"minecraft:stone"},{Slot:1b,id:"minecraft:stone"},{Slot:2b,id:"minecraft:stone"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/furnace_generator

# Solar Panel
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:lapis_lazuli"},{Slot:1b,id:"minecraft:lapis_lazuli"},{Slot:2b,id:"minecraft:lapis_lazuli"}],1:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}]} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/solar_panel

# Simple Battery
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:copper_block"},{Slot:1b,id:"minecraft:copper_block"},{Slot:2b,id:"minecraft:copper_block"}],1:[{Slot:0b,id:"minecraft:copper_block"},{Slot:1b,id:"minecraft:redstone"},{Slot:2b,id:"minecraft:copper_block"}],2:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_battery

# Advanced Battery
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:gold_block"},{Slot:1b,id:"minecraft:gold_block"},{Slot:2b,id:"minecraft:gold_block"}],1:[{Slot:0b,id:"minecraft:gold_block"},{Slot:1b,tag:{ctc:{id:"simple_battery"}}},{Slot:2b,id:"minecraft:gold_block"}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/advanced_battery

# Elite Battery
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:redstone_block"},{Slot:1b,id:"minecraft:redstone_block"},{Slot:2b,id:"minecraft:redstone_block"}],1:[{Slot:0b,id:"minecraft:redstone_block"},{Slot:1b,tag:{ctc:{id:"advanced_battery"}}},{Slot:2b,id:"minecraft:redstone_block"}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_block"}}},{Slot:1b,tag:{ctc:{id:"simplunium_block"}}},{Slot:2b,tag:{ctc:{id:"simplunium_block"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/elite_battery

# Electric Furnace
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:lapis_lazuli"},{Slot:1b,id:"minecraft:lapis_lazuli"},{Slot:2b,id:"minecraft:lapis_lazuli"}],1:[{Slot:0b,id:"minecraft:lapis_lazuli"},{Slot:1b,id:"minecraft:furnace"},{Slot:2b,id:"minecraft:lapis_lazuli"}],2:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_furnace

# Electric Smelter
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"electric_furnace"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_block"}}},{Slot:1b,tag:{ctc:{id:"simplunium_block"}}},{Slot:2b,tag:{ctc:{id:"simplunium_block"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_smelter

# Electric Brewing Stand
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:brewing_stand"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],2:[{Slot:0b,id:"minecraft:lapis_block"},{Slot:1b,id:"minecraft:lapis_block"},{Slot:2b,id:"minecraft:lapis_block"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_brewing_stand

# Electric Lamp
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:glowstone_dust"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glowstone_dust"}],1:[{Slot:0b,id:"minecraft:glass"},{Slot:1b,id:"minecraft:copper_block"},{Slot:2b,id:"minecraft:glass"}],2:[{Slot:0b,id:"minecraft:glowstone_dust"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glowstone_dust"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_lamp_x4

# Simple Cable
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}],1:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:coal"},{Slot:2b,id:"minecraft:iron_ingot"}],2:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_cable_x8
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}],1:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:coal"},{Slot:2b,id:"minecraft:copper_ingot"}],2:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_cable_x8
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}],1:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:charcoal"},{Slot:2b,id:"minecraft:iron_ingot"}],2:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_cable_x8
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}],1:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:charcoal"},{Slot:2b,id:"minecraft:copper_ingot"}],2:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_cable_x8

# Simplunium Ingot
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:coal_block"},{Slot:2b,id:"minecraft:coal_block"}],1:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:coal_block"}],2:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:coal_block"},{Slot:2b,id:"minecraft:coal_block"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:coal_block"},{Slot:2b,id:"minecraft:coal_block"}],1:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:gold_ingot"},{Slot:2b,id:"minecraft:coal_block"}],2:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:coal_block"},{Slot:2b,id:"minecraft:coal_block"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:coal_block"},{Slot:2b,id:"minecraft:coal_block"}],1:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:netherite_ingot"},{Slot:2b,id:"minecraft:coal_block"}],2:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:coal_block"},{Slot:2b,id:"minecraft:coal_block"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot

# Multimeter
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/multimeter

# Simplunium Helmet
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}]} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_helmet

# Simplunium Chestplate
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_chestplate

# Simplunium Leggings
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_leggings

# Simplunium Boots
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}]} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_boots

# Simplunium Sword
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_sword

# Simplunium Pickaxe
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_pickaxe

# Simplunium Axe
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_axe

# Simplunium Hoe
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_hoe

# Simplunium Shovel
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_shovel

# Wrench
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:2b,tag:{ctc:{id:"simplunium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/wrench

