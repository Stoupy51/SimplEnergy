
#> simplenergy:custom_blocks/electric_smelter/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_furnace
#

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:furnace"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/electric_smelter/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_furnace simplenergy.data 1
scoreboard players remove #total_electric_smelter simplenergy.data 1

# Kill the custom block entity
kill @s

