
#> simplenergy:custom_blocks/elite_battery/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_iron_block
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/elite_battery/replace_item

# Kill the custom block entity
function energy:v1/api/break_machine
kill @s

