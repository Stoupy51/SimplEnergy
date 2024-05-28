
#> simplenergy:custom_blocks/electric_brewing_stand/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_brewing_stand
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:brewing_stand"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/electric_brewing_stand/replace_item

# Kill the custom block entity
function energy:v1/api/break_machine
kill @s

