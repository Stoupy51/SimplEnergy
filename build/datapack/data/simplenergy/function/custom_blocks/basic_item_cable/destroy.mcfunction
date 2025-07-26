
#> simplenergy:custom_blocks/basic_item_cable/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_conduit
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:conduit"}},distance=..1] run function simplenergy:custom_blocks/basic_item_cable/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_conduit simplenergy.data 1
scoreboard players remove #total_basic_item_cable simplenergy.data 1

# Kill the custom block entity
kill @s

# Item cable destruction cleanup
function #itemio:calls/cables/destroy

