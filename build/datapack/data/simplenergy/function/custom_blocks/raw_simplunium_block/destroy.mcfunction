
#> simplenergy:custom_blocks/raw_simplunium_block/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_raw_iron_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1] run function simplenergy:custom_blocks/raw_simplunium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_raw_iron_block simplenergy.data 1
scoreboard players remove #total_raw_simplunium_block simplenergy.data 1

# Kill the custom block entity
kill @s

