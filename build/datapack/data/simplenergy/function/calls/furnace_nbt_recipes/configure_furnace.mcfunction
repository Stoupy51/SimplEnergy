
#> simplenergy:calls/furnace_nbt_recipes/configure_furnace
#
# @within	#furnace_nbt_recipes:v1/configure_furnace
#

execute if data block ~ ~ ~ {CustomName:{translate:"simplenergy.electric_furnace"}} run scoreboard players set @s furnace_nbt_recipes.speed 1500
execute if data block ~ ~ ~ {CustomName:{translate:"simplenergy.electric_smelter"}} run scoreboard players set @s furnace_nbt_recipes.speed 8000

