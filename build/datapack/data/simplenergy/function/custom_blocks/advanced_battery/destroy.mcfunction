
#> simplenergy:custom_blocks/advanced_battery/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_gold_block
#

# Keep energy when destroying the block
scoreboard players operation #storage simplenergy.data = @s energy.storage

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] run function simplenergy:custom_blocks/advanced_battery/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_gold_block simplenergy.data 1
scoreboard players remove #total_advanced_battery simplenergy.data 1

# Kill the custom block entity
kill @s

