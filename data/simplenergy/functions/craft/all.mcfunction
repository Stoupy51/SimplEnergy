function simplenergy:craft/drop_gui
function simplenergy:craft/gui

#Verifying if craft has been done
scoreboard players set Crafted SE_Data 0
scoreboard players set Count SE_Data 0
execute store result score Crafted SE_Data run data get block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData
execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute unless score @s[tag=SE_WaitingCraft] SE_Data = Crafted SE_Data unless score @s SE_Data2 = Count SE_Data run function simplenergy:craft/crafted

tag @s remove SE_WaitingCraft
item replace block ~ ~ ~ container.16 with minecraft:cobblestone{CustomModelData:2011929,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}
scoreboard players set @s SE_Data 0
scoreboard players set @s SE_Data2 1

#Cauldron Generator
    execute if entity @s[tag=!SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:3b}] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run function simplenergy:craft/items/cauldron_generator
#Furnace Generator
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_block"},{Slot:3b,id:"minecraft:iron_block"},{Slot:4b,id:"minecraft:iron_block"},{Slot:11b,id:"minecraft:iron_block"},{Slot:12b,id:"minecraft:furnace"},{Slot:13b,id:"minecraft:iron_block"},{Slot:20b,id:"minecraft:stone"},{Slot:21b,id:"minecraft:stone"},{Slot:22b,id:"minecraft:stone"}]} run function simplenergy:craft/items/furnace_generator
#Solar Panel
    execute if entity @s[tag=!SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:lapis_lazuli"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:lapis_lazuli"},{Slot:11b,id:"minecraft:iron_block"},{Slot:12b,id:"minecraft:iron_block"},{Slot:13b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/solar_panel
    execute if entity @s[tag=!SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,id:"minecraft:lapis_lazuli"},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:iron_block"},{Slot:21b,id:"minecraft:iron_block"},{Slot:22b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/solar_panel
#Simple Wire
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:copper_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:coal"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:copper_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run function simplenergy:craft/items/simple_wire
#Advanced Wire
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_Simplunium:1b}},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,tag:{SE_Simplunium:1b}},{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,tag:{SE_SimpleWire:1b}},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,tag:{SE_Simplunium:1b}},{Slot:21b,id:"minecraft:lapis_lazuli"},{Slot:22b,tag:{SE_Simplunium:1b}}]} run function simplenergy:craft/items/advanced_wire
#Elite Wire
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_SimpluniumBlock:1b}},{Slot:3b,id:"minecraft:redstone_block"},{Slot:4b,tag:{SE_SimpluniumBlock:1b}},{Slot:11b,id:"minecraft:redstone_block"},{Slot:12b,tag:{SE_AdvancedWire:1b}},{Slot:13b,id:"minecraft:redstone_block"},{Slot:20b,tag:{SE_SimpluniumBlock:1b}},{Slot:21b,id:"minecraft:redstone_block"},{Slot:22b,tag:{SE_SimpluniumBlock:1b}}]} run function simplenergy:craft/items/elite_wire
#Simple Battery
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:copper_block"},{Slot:3b,id:"minecraft:copper_block"},{Slot:4b,id:"minecraft:copper_block"},{Slot:11b,id:"minecraft:copper_block"},{Slot:12b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:copper_block"},{Slot:20b,id:"minecraft:iron_block"},{Slot:21b,id:"minecraft:iron_block"},{Slot:22b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/simple_battery
#Advanced Battery
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:gold_block"},{Slot:3b,id:"minecraft:gold_block"},{Slot:4b,id:"minecraft:gold_block"},{Slot:11b,id:"minecraft:gold_block"},{Slot:12b,tag:{SE_SimpleBattery:1b}},{Slot:13b,id:"minecraft:gold_block"},{Slot:20b,tag:{SE_Simplunium:1b}},{Slot:21b,tag:{SE_Simplunium:1b}},{Slot:22b,tag:{SE_Simplunium:1b}}]} run function simplenergy:craft/items/advanced_battery
#Elite Battery
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:redstone_block"},{Slot:3b,id:"minecraft:redstone_block"},{Slot:4b,id:"minecraft:redstone_block"},{Slot:11b,id:"minecraft:redstone_block"},{Slot:12b,tag:{SE_AdvancedBattery:1b}},{Slot:13b,id:"minecraft:redstone_block"},{Slot:20b,tag:{SE_SimpluniumBlock:1b}},{Slot:21b,tag:{SE_SimpluniumBlock:1b}},{Slot:22b,tag:{SE_SimpluniumBlock:1b}}]} run function simplenergy:craft/items/elite_battery
#Electric Furnace
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:lapis_lazuli"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:lapis_lazuli"},{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,id:"minecraft:furnace"},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:iron_block"},{Slot:21b,id:"minecraft:iron_block"},{Slot:22b,id:"minecraft:iron_block"}]} run function simplenergy:craft/items/electric_furnace
#Electric Smelter
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_Simplunium:1b}},{Slot:3b,tag:{SE_Simplunium:1b}},{Slot:4b,tag:{SE_Simplunium:1b}},{Slot:11b,tag:{SE_Simplunium:1b}},{Slot:12b,tag:{SE_ElectricFurnace:1b}},{Slot:13b,tag:{SE_Simplunium:1b}},{Slot:20b,tag:{SE_SimpluniumBlock:1b}},{Slot:21b,tag:{SE_SimpluniumBlock:1b}},{Slot:22b,tag:{SE_SimpluniumBlock:1b}}]} run function simplenergy:craft/items/electric_smelter
#Electric Brewing Stand
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_Simplunium:1b}},{Slot:3b,tag:{SE_Simplunium:1b}},{Slot:4b,tag:{SE_Simplunium:1b}},{Slot:11b,tag:{SE_Simplunium:1b}},{Slot:12b,id:"minecraft:brewing_stand"},{Slot:13b,tag:{SE_Simplunium:1b}},{Slot:20b,id:"minecraft:lapis_block"},{Slot:21b,id:"minecraft:lapis_block"},{Slot:22b,id:"minecraft:lapis_block"}]} run function simplenergy:craft/items/electric_brewing_stand
#Electric Lamp
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:glowstone_dust"},{Slot:3b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:glass"},{Slot:12b,id:"minecraft:copper_block"},{Slot:13b,id:"minecraft:glass"},{Slot:20b,id:"minecraft:glowstone_dust"},{Slot:21b,id:"minecraft:glass"},{Slot:22b,id:"minecraft:glowstone_dust"}]} run function simplenergy:craft/items/electric_lamp
#Joulemeter
    execute if entity @s[tag=!SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:20b}] if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:copper_ingot"},{Slot:13b,id:"minecraft:copper_ingot"},{Slot:21b,id:"minecraft:copper_ingot"},{Slot:22b,id:"minecraft:copper_ingot"}]} run function simplenergy:craft/items/joulemeter
    execute if entity @s[tag=!SE_WaitingCraft] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:22b}] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:copper_ingot"},{Slot:12b,id:"minecraft:copper_ingot"},{Slot:20b,id:"minecraft:copper_ingot"},{Slot:21b,id:"minecraft:copper_ingot"}]} run function simplenergy:craft/items/joulemeter
#Simplunium Ore
#Simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:2b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:3b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:4b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:11b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:12b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:13b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:20b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:21b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:22b}] run function simplenergy:craft/items/simplunium
    execute if entity @s[tag=!SE_WaitingCraft] if data block ~ ~ ~ Items[{Slot:22b,tag:{SE_SimpluniumBlock:1b}}] unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] run function simplenergy:craft/items/simplunium
#Simplunium Block
    execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_Simplunium:1b}},{Slot:3b,tag:{SE_Simplunium:1b}},{Slot:4b,tag:{SE_Simplunium:1b}},{Slot:11b,tag:{SE_Simplunium:1b}},{Slot:12b,tag:{SE_Simplunium:1b}},{Slot:13b,tag:{SE_Simplunium:1b}},{Slot:20b,tag:{SE_Simplunium:1b}},{Slot:21b,tag:{SE_Simplunium:1b}},{Slot:22b,tag:{SE_Simplunium:1b}}]} run function simplenergy:craft/items/simplunium_block
