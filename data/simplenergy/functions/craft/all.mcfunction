function simplenergy:craft/gui


tag @s remove SE_WaitingCraft
#Cauldron Generator
execute if entity @s[tag=!SE_WaitingCraft] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run function simplenergy:craft/items/cauldron_generator




