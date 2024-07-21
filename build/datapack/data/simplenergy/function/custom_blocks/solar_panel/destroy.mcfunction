
#> simplenergy:custom_blocks/solar_panel/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_daylight_detector
#

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/solar_panel/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_daylight_detector simplenergy.data 1
scoreboard players remove #total_solar_panel simplenergy.data 1

# Kill the custom block entity
kill @s


# Decrease the number of entities with second tag
scoreboard players remove #second_entities simplenergy.data 1

