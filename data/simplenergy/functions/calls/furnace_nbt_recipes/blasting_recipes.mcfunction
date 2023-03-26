
## Called by function tag #furnace_nbt_recipes:v1.0/smelting_recipes
## You are allowed to call a loot table with more than 1 output count.
## (x1 cobblestone -> x2 stone for instance)
## Here are some examples with SimplEnergy recipes

# Simplunium Ore
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"simplunium_ore"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

# Deepslate Simplunium Ore
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"deepslate_simplunium_ore"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

# Raw Simplunium
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"raw_simplunium"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

# Simplunium Dust
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"simplunium_dust"} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

# Simplunium Armor & Tools
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{traits:{"metal/simplunium":1b,"armor":1b}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_nugget
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{traits:{"metal/simplunium":1b,"tool":1b}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_nugget

