
#> simplenergy:custom_blocks/solar_panel/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_daylight_detector
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/solar_panel/replace_item

# Kill the custom block entity
kill @s

