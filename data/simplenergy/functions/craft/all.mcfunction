function simplenergy:craft/gui

#Verifying if craft has been done
execute if entity @s[tag=SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:16b}] run function simplenergy:craft/crafted

tag @s remove SE_WaitingCraft
item replace block ~ ~ ~ container.16 with minecraft:air
scoreboard players set @s SE_Data 0

#Cauldron Generator
execute if entity @s[tag=!SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:3b}] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run function simplenergy:craft/items/cauldron_generator
#Furnace Generator
execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_block"},{Slot:3b,id:"minecraft:iron_block"},{Slot:4b,id:"minecraft:iron_block"},{Slot:11b,id:"minecraft:iron_block"},{Slot:12b,id:"minecraft:furnace"},{Slot:13b,id:"minecraft:iron_block"},{Slot:20b,id:"minecraft:stone"},{Slot:21b,id:"minecraft:stone"},{Slot:22b,id:"minecraft:stone"}]} run function simplenergy:craft/items/furnace_generator
#Solar Panel
execute if entity @s[tag=!SE_WaitingCraft] unless block ~ ~ ~ barrel{Items:[{Slot:20b},{Slot:21b},{Slot:22b}]} if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:lapis_lazuli"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:lapis_lazuli"},{Slot:11b,id:"minecraft:iron_block"},{Slot:12b,id:"minecraft:iron_block"},{Slot:13b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/solar_panel
execute if entity @s[tag=!SE_WaitingCraft] unless block ~ ~ ~ barrel{Items:[{Slot:2b},{Slot:3b},{Slot:4b}]} if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,id:"minecraft:lapis_lazuli"},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:iron_block"},{Slot:21b,id:"minecraft:iron_block"},{Slot:22b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/solar_panel
#Simple Wire
execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:copper_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:coal"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:copper_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run function simplenergy:craft/items/simple_wire
#Advanced Wire
#Elite Wire
#Simple Battery
execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:copper_block"},{Slot:3b,id:"minecraft:copper_block"},{Slot:4b,id:"minecraft:copper_block"},{Slot:11b,id:"minecraft:copper_block"},{Slot:12b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:copper_block"},{Slot:20b,id:"minecraft:iron_block"},{Slot:21b,id:"minecraft:iron_block"},{Slot:22b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/simple_battery
#Advanced Battery
#Elite Battery
#Electric Furnace
execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:lapis_lazuli"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:lapis_lazuli"},{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,id:"minecraft:furnace"},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:iron_block"},{Slot:21b,id:"minecraft:iron_block"},{Slot:22b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/electric_furnace
#Electric Smelter
#Electric Brewing Stand
#Electric Lamp
execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:glowstone_dust"},{Slot:3b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:glass"},{Slot:12b,id:"minecraft:copper_block"},{Slot:13b,id:"minecraft:glass"},{Slot:20b,id:"minecraft:glowstone_dust"},{Slot:21b,id:"minecraft:glass"},{Slot:22b,id:"minecraft:glowstone_dust"}]} run function simplenergy:craft/items/electric_lamp
#Joulemeter
execute if entity @s[tag=!SE_WaitingCraft] unless block ~ ~ ~ barrel{Items:[{Slot:2b},{Slot:11b},{Slot:20b}]} if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:copper_ingot"},{Slot:13b,id:"minecraft:copper_ingot"},{Slot:21b,id:"minecraft:copper_ingot"},{Slot:22b,id:"minecraft:copper_ingot"}]} run function simplenergy:craft/items/joulemeter
execute if entity @s[tag=!SE_WaitingCraft] unless block ~ ~ ~ barrel{Items:[{Slot:4b},{Slot:13b},{Slot:22b}]} if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:copper_ingot"},{Slot:12b,id:"minecraft:copper_ingot"},{Slot:20b,id:"minecraft:copper_ingot"},{Slot:21b,id:"minecraft:copper_ingot"}]} run function simplenergy:craft/items/joulemeter
