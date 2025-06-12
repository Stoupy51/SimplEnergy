
#> simplenergy:custom_blocks/electric_smelter/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_furnace
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] run function simplenergy:custom_blocks/electric_smelter/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_furnace simplenergy.data 1
scoreboard players remove #total_electric_smelter simplenergy.data 1

# Kill the custom block entity
kill @s

# Decrease the number of entities with tick tag
scoreboard players remove #tick_entities simplenergy.data 1

