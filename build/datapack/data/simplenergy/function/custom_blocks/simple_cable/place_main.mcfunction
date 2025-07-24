
#> simplenergy:custom_blocks/simple_cable/place_main
#
# @executed	positioned ~ ~ ~-8
#
# @within	simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-8 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-7 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-6 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-5 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-4 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-3 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-2 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~-1 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~0 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~1 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~2 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~3 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~4 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~5 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~6 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~7 ]
#			simplenergy:custom_blocks/_player_head/search_simple_cable_z [ positioned ~ ~ ~8 ]
#

tag @s add simplenergy.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:player_head{profile:{'id': [-709098200, 1001541428, -2043264882, -430220135], 'properties': [{'name': 'textures', 'value': 'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0='}]}}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:custom_blocks/simple_cable/place_secondary
tag @s remove simplenergy.placer

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_player_head simplenergy.data 1
scoreboard players add #total_simple_cable simplenergy.data 1

