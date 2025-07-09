
#> simplenergy:calls/smithed_crafter/shapeless_recipes
#
# @within	#smithed.crafter:event/shapeless_recipes
#

execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"simplenergy": {"simplunium_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"simplenergy": {"simplunium_ingot": true}}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_nugget_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 3 if data storage smithed.crafter:input {"recipe": [{"id": "minecraft:cauldron", "count": 1}, {"id": "minecraft:redstone", "count": 1}, {"id": "minecraft:iron_ingot", "count": 1}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/cauldron_generator
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 2 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"simplenergy": {"simple_cable": true}}}}, {"id": "minecraft:lapis_lazuli", "count": 8}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/advanced_cable
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 2 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"simplenergy": {"advanced_cable": true}}}}, {"id": "minecraft:redstone_block", "count": 4}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/elite_cable
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 2 if data storage smithed.crafter:input {"recipe": [{"id": "minecraft:book", "count": 1}, {"count": 1, "components": {"minecraft:custom_data": {"simplenergy": {"simplunium_ingot": true}}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/manual
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"simplenergy": {"manual": true}}}}]} run loot replace block ~ ~ ~ container.16 loot simplenergy:i/manual

