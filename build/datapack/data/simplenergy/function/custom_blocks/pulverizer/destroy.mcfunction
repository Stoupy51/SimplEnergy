
#> simplenergy:custom_blocks/pulverizer/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_barrel
#

# ItemIO compatibility
function #itemio:calls/container/destroy

# Copy slots to storage
data remove storage simplenergy:temp slots
data modify storage simplenergy:temp slots set from entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..1] run function simplenergy:custom_blocks/pulverizer/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_barrel simplenergy.data 1
scoreboard players remove #total_pulverizer simplenergy.data 1

# Kill the custom block entity
kill @s

# Decrease the number of entities with tick tag
scoreboard players remove #tick_entities simplenergy.data 1

