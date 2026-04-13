
#> simplenergy:custom_blocks/get_rotation
#
# @within	simplenergy:custom_blocks/furnace_generator/place_main
#			simplenergy:custom_blocks/redstone_generator/place_main
#			simplenergy:custom_blocks/wind_turbine/place_main
#			simplenergy:custom_blocks/electric_furnace/place_main
#			simplenergy:custom_blocks/electric_smelter/place_main
#			simplenergy:custom_blocks/pulverizer/place_main
#

# Set up score
scoreboard players set #rotation simplenergy.data 0

# Player case
execute if score #rotation simplenergy.data matches 0 if entity @s[y_rotation=-46..45] run scoreboard players set #rotation simplenergy.data 1
execute if score #rotation simplenergy.data matches 0 if entity @s[y_rotation=45..135] run scoreboard players set #rotation simplenergy.data 2
execute if score #rotation simplenergy.data matches 0 if entity @s[y_rotation=135..225] run scoreboard players set #rotation simplenergy.data 3
execute if score #rotation simplenergy.data matches 0 if entity @s[y_rotation=225..315] run scoreboard players set #rotation simplenergy.data 4

# Predicate case
execute if score #rotation simplenergy.data matches 0 if predicate simplenergy:facing/north run scoreboard players set #rotation simplenergy.data 1
execute if score #rotation simplenergy.data matches 0 if predicate simplenergy:facing/east run scoreboard players set #rotation simplenergy.data 2
execute if score #rotation simplenergy.data matches 0 if predicate simplenergy:facing/south run scoreboard players set #rotation simplenergy.data 3
execute if score #rotation simplenergy.data matches 0 if predicate simplenergy:facing/west run scoreboard players set #rotation simplenergy.data 4
# No more cases for now

