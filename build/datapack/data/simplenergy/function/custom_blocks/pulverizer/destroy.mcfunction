
#> simplenergy:custom_blocks/pulverizer/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_barrel
#

# ItemIO compatibility
function #itemio:calls/container/destroy

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/pulverizer/replace_item

# Kill the custom block entity
function energy:v1/api/break_machine
kill @s

