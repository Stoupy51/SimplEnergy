
#> simplenergy:custom_blocks/simple_cable/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_player_head
#

# Datapack Energy
function energy:v1/api/break_cable

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] run function simplenergy:custom_blocks/simple_cable/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_player_head simplenergy.data 1
scoreboard players remove #total_simple_cable simplenergy.data 1

# Kill the custom block entity
kill @s

