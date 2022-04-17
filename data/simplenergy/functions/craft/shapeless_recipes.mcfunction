
#SimplEnergy Manual
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:book"},{Count:1b,tag:{ctc:{id:"simplunium_ingot"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplenergy_manual
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,tag:{ctc:{id:"simplenergy_manual"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplenergy_manual

#Raw Simplunium Block
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:9b,tag:{ctc:{id:"raw_simplunium"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/raw_simplunium_block

#Simplunium Block
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:9b,tag:{ctc:{id:"simplunium_ingot"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_block

#Raw Simplunium
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,tag:{ctc:{id:"raw_simplunium_block"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/raw_simplunium_x9

#Simplunium Ingot
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,tag:{ctc:{id:"simplunium_block"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot_x9
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:9b,tag:{ctc:{id:"simplunium_nugget"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot

#Simplunium Nugget
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,tag:{ctc:{id:"simplunium_ingot"}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_nugget_x9

