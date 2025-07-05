
#> simplenergy:custom_blocks/redstone_generator/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_furnace
#

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] run function simplenergy:custom_blocks/redstone_generator/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_furnace simplenergy.data 1
scoreboard players remove #total_redstone_generator simplenergy.data 1

# Kill the custom block entity
kill @s

