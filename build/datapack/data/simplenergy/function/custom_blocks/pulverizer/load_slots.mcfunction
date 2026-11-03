
#> simplenergy:custom_blocks/pulverizer/load_slots
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/tick
#

data modify storage simplenergy:temp slots set value [{},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true}]
data modify storage simplenergy:temp slots set from entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots
execute unless data storage simplenergy:temp slots[0].blocked run tag @s add simplenergy.pulverizer_unlocked_0
execute unless data storage simplenergy:temp slots[1].blocked run tag @s add simplenergy.pulverizer_unlocked_1
execute unless data storage simplenergy:temp slots[2].blocked run tag @s add simplenergy.pulverizer_unlocked_2
execute unless data storage simplenergy:temp slots[3].blocked run tag @s add simplenergy.pulverizer_unlocked_3
execute unless data storage simplenergy:temp slots[4].blocked run tag @s add simplenergy.pulverizer_unlocked_4
execute unless data storage simplenergy:temp slots[5].blocked run tag @s add simplenergy.pulverizer_unlocked_5
execute unless data storage simplenergy:temp slots[6].blocked run tag @s add simplenergy.pulverizer_unlocked_6
execute unless data storage simplenergy:temp slots[7].blocked run tag @s add simplenergy.pulverizer_unlocked_7
execute store result score @s simplenergy.pulverizer_progress_0 run data get storage simplenergy:temp slots[0].progression
execute store result score @s simplenergy.pulverizer_progress_1 run data get storage simplenergy:temp slots[1].progression
execute store result score @s simplenergy.pulverizer_progress_2 run data get storage simplenergy:temp slots[2].progression
execute store result score @s simplenergy.pulverizer_progress_3 run data get storage simplenergy:temp slots[3].progression
execute store result score @s simplenergy.pulverizer_progress_4 run data get storage simplenergy:temp slots[4].progression
execute store result score @s simplenergy.pulverizer_progress_5 run data get storage simplenergy:temp slots[5].progression
execute store result score @s simplenergy.pulverizer_progress_6 run data get storage simplenergy:temp slots[6].progression
execute store result score @s simplenergy.pulverizer_progress_7 run data get storage simplenergy:temp slots[7].progression

