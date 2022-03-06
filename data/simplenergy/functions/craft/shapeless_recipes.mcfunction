
#SimplEnergy Manual
	execute store result score @s smd.data if entity @s[scores={smd.data=0}] if score count smd.data matches 2 if data storage smd:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:book"},{Count:1b,id:"minecraft:command_block",tag:{simplenergy:{simplunium_ingot:1b}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplenergy_manual

#Simplunium Block
	execute store result score @s smd.data if entity @s[scores={smd.data=0}] if score count smd.data matches 1 if data storage smd:crafter root.temp{shapeless_crafting_input:[{Count:9b,id:"minecraft:command_block",tag:{simplenergy:{simplunium_ingot:1b}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_block

#Simplunium Ingot
	execute store result score @s smd.data if entity @s[scores={smd.data=0}] if score count smd.data matches 1 if data storage smd:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:barrel",tag:{simplenergy:{simplunium_block:1b}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot_x9

