
#> simplenergy:custom_blocks/creative_battery/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_iron_block
#

# Keep energy when destroying the block
scoreboard players operation #storage simplenergy.data = @s energy.storage

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/creative_battery/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_iron_block simplenergy.data 1
scoreboard players remove #total_creative_battery simplenergy.data 1

# Kill the custom block entity
kill @s

