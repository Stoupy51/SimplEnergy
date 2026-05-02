
#> simplenergy:custom_blocks/compute_brightness
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/simplunium_block/place_secondary
#			simplenergy:custom_blocks/simplunium_ore/place_secondary
#			simplenergy:custom_blocks/deepslate_simplunium_ore/place_secondary
#			simplenergy:custom_blocks/raw_simplunium_block/place_secondary
#			simplenergy:custom_blocks/machine_block/place_secondary
#			simplenergy:custom_blocks/simple_battery/place_secondary
#			simplenergy:custom_blocks/advanced_battery/place_secondary
#			simplenergy:custom_blocks/elite_battery/place_secondary
#			simplenergy:custom_blocks/creative_battery/place_secondary
#			simplenergy:custom_blocks/cauldron_generator/place_secondary
#			simplenergy:custom_blocks/furnace_generator/place_secondary
#			simplenergy:custom_blocks/redstone_generator/place_secondary
#			simplenergy:custom_blocks/heat_generator/place_secondary
#			simplenergy:custom_blocks/wind_turbine/place_secondary
#			simplenergy:custom_blocks/solar_panel/place_secondary
#			simplenergy:custom_blocks/electric_furnace/place_secondary
#			simplenergy:custom_blocks/electric_smelter/place_secondary
#			simplenergy:custom_blocks/electric_brewing_stand/place_secondary
#			simplenergy:custom_blocks/pulverizer/place_secondary
#			simplenergy:custom_blocks/elevator/place_secondary
#			simplenergy:custom_blocks/simple_cable/place_secondary
#			simplenergy:custom_blocks/advanced_cable/place_secondary
#			simplenergy:custom_blocks/elite_cable/place_secondary
#			simplenergy:custom_blocks/basic_item_cable/place_secondary
#			simplenergy:v2.0.19/second_5 [ as @e[type=item_display,tag=simplenergy.custom_block,sort=random,limit=50] & at @s ]
#

# Reset light score
scoreboard players set #light simplenergy.data 0

# Check all 6 neighboring positions
execute if score #light simplenergy.data matches ..14 positioned ~ ~1 ~ run function simplenergy:custom_blocks/check_light
execute if score #light simplenergy.data matches ..14 positioned ~ ~-1 ~ run function simplenergy:custom_blocks/check_light
execute if score #light simplenergy.data matches ..14 positioned ~1 ~ ~ run function simplenergy:custom_blocks/check_light
execute if score #light simplenergy.data matches ..14 positioned ~-1 ~ ~ run function simplenergy:custom_blocks/check_light
execute if score #light simplenergy.data matches ..14 positioned ~ ~ ~1 run function simplenergy:custom_blocks/check_light
execute if score #light simplenergy.data matches ..14 positioned ~ ~ ~-1 run function simplenergy:custom_blocks/check_light

# Apply computed brightness to the entity
data merge entity @s {brightness:{block:0,sky:0}}
execute store result entity @s brightness.block int 1 run scoreboard players get #light simplenergy.data
execute store result entity @s brightness.sky int 1 run scoreboard players get #light simplenergy.data

