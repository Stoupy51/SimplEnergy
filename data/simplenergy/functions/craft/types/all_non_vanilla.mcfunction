#Crafts with Simplunium Block
	execute as @s[tag=!SE_FoundCraft] if data storage simplenergy:items Crafting[{tag:{SE_SimpluniumBlock:1b}}] unless data storage simplenergy:items Crafting[{Slot:16b,tag:{SE_SimpluniumBlock:1b}}] run function simplenergy:craft/types/simplunium_block
#Advanced Wire
	execute as @s[tag=!SE_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:coal"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:coal"},{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,tag:{SE_SimpleWire:1b}},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:coal"},{Slot:21b,id:"minecraft:lapis_lazuli"},{Slot:22b,id:"minecraft:coal"}]} run function simplenergy:craft/items/advanced_wire
#Elite Wire
	execute as @s[tag=!SE_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:coal_block"},{Slot:3b,id:"minecraft:redstone_block"},{Slot:4b,id:"minecraft:coal_block"},{Slot:11b,id:"minecraft:redstone_block"},{Slot:12b,tag:{SE_AdvancedWire:1b}},{Slot:13b,id:"minecraft:redstone_block"},{Slot:20b,id:"minecraft:coal_block"},{Slot:21b,id:"minecraft:redstone_block"},{Slot:22b,id:"minecraft:coal_block"}]} run function simplenergy:craft/items/elite_wire
#Advanced Battery
	execute as @s[tag=!SE_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:gold_block"},{Slot:3b,id:"minecraft:gold_block"},{Slot:4b,id:"minecraft:gold_block"},{Slot:11b,id:"minecraft:gold_block"},{Slot:12b,tag:{SE_SimpleBattery:1b}},{Slot:13b,id:"minecraft:gold_block"},{Slot:20b,tag:{SE_SimpluniumIngot:1b}},{Slot:21b,tag:{SE_SimpluniumIngot:1b}},{Slot:22b,tag:{SE_SimpluniumIngot:1b}}]} run function simplenergy:craft/items/advanced_battery
#Electric Brewing Stand
	execute as @s[tag=!SE_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_SimpluniumIngot:1b}},{Slot:3b,tag:{SE_SimpluniumIngot:1b}},{Slot:4b,tag:{SE_SimpluniumIngot:1b}},{Slot:11b,tag:{SE_SimpluniumIngot:1b}},{Slot:12b,id:"minecraft:brewing_stand"},{Slot:13b,tag:{SE_SimpluniumIngot:1b}},{Slot:20b,id:"minecraft:lapis_block"},{Slot:21b,id:"minecraft:lapis_block"},{Slot:22b,id:"minecraft:lapis_block"}]} run function simplenergy:craft/items/electric_brewing_stand
#Simplunium Block
	execute as @s[tag=!SE_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{SE_SimpluniumIngot:1b}},{Slot:3b,tag:{SE_SimpluniumIngot:1b}},{Slot:4b,tag:{SE_SimpluniumIngot:1b}},{Slot:11b,tag:{SE_SimpluniumIngot:1b}},{Slot:12b,tag:{SE_SimpluniumIngot:1b}},{Slot:13b,tag:{SE_SimpluniumIngot:1b}},{Slot:20b,tag:{SE_SimpluniumIngot:1b}},{Slot:21b,tag:{SE_SimpluniumIngot:1b}},{Slot:22b,tag:{SE_SimpluniumIngot:1b}}]} run function simplenergy:craft/items/simplunium_block

tag @s add SE_FoundCraft
