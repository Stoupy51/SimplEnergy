
#Called by function tag #simplenergy:check_recipes_used

execute if data storage simplenergy:items furnace.RecipesUsed."simplenergy:barrel" run function #simplenergy:furnace_recipes
execute if data storage simplenergy:items furnace.RecipesUsed."simplenergy:barrel_blast" run function #simplenergy:furnace_recipes
execute if data storage simplenergy:items furnace.RecipesUsed."simplenergy:command_block" run function #simplenergy:furnace_recipes
execute if data storage simplenergy:items furnace.RecipesUsed."simplenergy:command_block_blast" run function #simplenergy:furnace_recipes
