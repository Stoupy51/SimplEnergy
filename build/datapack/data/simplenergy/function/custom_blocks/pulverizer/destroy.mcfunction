
#> simplenergy:custom_blocks/pulverizer/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_barrel
#

# ItemIO compatibility
function #itemio:calls/container/destroy

# Copy slots to storage
data modify storage simplenergy:temp slots set value [{},{},{},{},{},{},{},{}]
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_0] run data modify storage simplenergy:temp slots[0].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_1] run data modify storage simplenergy:temp slots[1].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_2] run data modify storage simplenergy:temp slots[2].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_3] run data modify storage simplenergy:temp slots[3].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_4] run data modify storage simplenergy:temp slots[4].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_5] run data modify storage simplenergy:temp slots[5].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_6] run data modify storage simplenergy:temp slots[6].blocked set value true
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_7] run data modify storage simplenergy:temp slots[7].blocked set value true
execute store result storage simplenergy:temp slots[0].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_0
execute store result storage simplenergy:temp slots[1].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_1
execute store result storage simplenergy:temp slots[2].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_2
execute store result storage simplenergy:temp slots[3].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_3
execute store result storage simplenergy:temp slots[4].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_4
execute store result storage simplenergy:temp slots[5].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_5
execute store result storage simplenergy:temp slots[6].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_6
execute store result storage simplenergy:temp slots[7].progression int 1 run scoreboard players get @s simplenergy.pulverizer_progress_7

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

