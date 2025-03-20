
#> simplenergy:custom_blocks/furnace_generator/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_furnace
#

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] run function simplenergy:custom_blocks/furnace_generator/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_furnace simplenergy.data 1
scoreboard players remove #total_furnace_generator simplenergy.data 1

# Kill the custom block entity
kill @s


# Decrease the number of entities with second tag
scoreboard players remove #second_entities simplenergy.data 1

