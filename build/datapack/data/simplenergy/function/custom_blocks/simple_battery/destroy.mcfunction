
#> simplenergy:custom_blocks/simple_battery/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_copper_block
#

# Keep energy when destroying the block
scoreboard players operation #storage simplenergy.data = @s energy.storage

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_block"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/simple_battery/replace_item

# Kill the custom block entity
kill @s

