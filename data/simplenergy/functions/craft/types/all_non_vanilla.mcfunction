#Crafts with Simplunium Block
	execute if entity @s[tag=!SimplEnergy_FoundCraft] if data storage simplenergy:items all.Crafting[{tag:{SimplEnergy_SimpluniumBlock:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:16b,tag:{SimplEnergy_SimpluniumBlock:1b}}] run function simplenergy:craft/types/simplunium_block
#Crafts with Simplunium Ingot
	execute if entity @s[tag=!SimplEnergy_FoundCraft] if data storage simplenergy:items all.Crafting[{tag:{SimplEnergy_SimpluniumIngot:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:16b,tag:{SimplEnergy_SimpluniumIngot:1b}}] run function simplenergy:craft/types/simplunium_ingot
#Advanced Cable
	execute if entity @s[tag=!SimplEnergy_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:coal"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:coal"},{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,tag:{SimplEnergy_SimpleCable:1b}},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:coal"},{Slot:21b,id:"minecraft:lapis_lazuli"},{Slot:22b,id:"minecraft:coal"}]} run function simplenergy:craft/items/advanced_cable
#Elite Cable
	execute if entity @s[tag=!SimplEnergy_FoundCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:coal_block"},{Slot:3b,id:"minecraft:redstone_block"},{Slot:4b,id:"minecraft:coal_block"},{Slot:11b,id:"minecraft:redstone_block"},{Slot:12b,tag:{SimplEnergy_AdvancedCable:1b}},{Slot:13b,id:"minecraft:redstone_block"},{Slot:20b,id:"minecraft:coal_block"},{Slot:21b,id:"minecraft:redstone_block"},{Slot:22b,id:"minecraft:coal_block"}]} run function simplenergy:craft/items/elite_cable

tag @s add SimplEnergy_FoundCraft
