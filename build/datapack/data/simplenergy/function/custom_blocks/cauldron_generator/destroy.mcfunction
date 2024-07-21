
#> simplenergy:custom_blocks/cauldron_generator/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_cauldron
#

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/cauldron_generator/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_cauldron simplenergy.data 1
scoreboard players remove #total_cauldron_generator simplenergy.data 1

# Kill the custom block entity
kill @s


# Decrease the number of entities with second tag
scoreboard players remove #second_entities simplenergy.data 1

