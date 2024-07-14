
#> simplenergy:custom_blocks/simple_cable/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_player_head
#

# Datapack Energy
function energy:v1/api/break_cable

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/simple_cable/replace_item

# Kill the custom block entity
kill @s

