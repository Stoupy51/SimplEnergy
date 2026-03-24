
#> simplenergy:advancements/unlock_recipes
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:unlock_recipes
#

# Revoke advancement
advancement revoke @s only simplenergy:unlock_recipes

## For each ingredient in inventory, unlock the recipes
# minecraft:stone
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:stone
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:machine_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:machine_block_2

# minecraft:copper_block
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:copper_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:elevator_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:machine_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:machine_block_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:wind_turbine

# minecraft:iron_block
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:iron_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:elevator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:elevator_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:machine_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:machine_block_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:slot_unlocker
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:wind_turbine
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:wind_turbine_2

# minecraft:redstone
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:redstone
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery

# minecraft:iron_ingot
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:iron_ingot
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:multimeter
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:wind_turbine
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:wind_turbine_2

# minecraft:redstone_block
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:redstone_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery_2

# minecraft:cauldron
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:cauldron
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator_2

# minecraft:glass
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:glass
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_2

# minecraft:netherite_scrap
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:netherite_scrap
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_2

# minecraft:ancient_debris
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:ancient_debris
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:heat_generator_4

# minecraft:lapis_lazuli
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:lapis_lazuli
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_2

# minecraft:daylight_detector
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:daylight_detector
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_4

# minecraft:blue_stained_glass
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:blue_stained_glass
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_3

# minecraft:blue_stained_glass_pane
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:blue_stained_glass_pane
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel_4

# minecraft:redstone_lamp
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:redstone_lamp
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:elevator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:elevator_2

# minecraft:copper_ingot
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:copper_ingot
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:multimeter
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_4

# minecraft:coal
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:coal
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_3

# minecraft:charcoal
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:charcoal
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_4

# minecraft:quartz
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:quartz
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:slot_unlocker

# minecraft:breeze_rod
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:breeze_rod
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:slot_unlocker

# minecraft:gold_nugget
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:gold_nugget
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:slot_unlocker

# minecraft:raw_gold_block
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:raw_gold_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:slot_unlocker

## Add result items
execute if items entity @s container.* *[custom_data~{"simplenergy": {"machine_block":true} }] run recipe give @s simplenergy:machine_block
execute if items entity @s container.* *[custom_data~{"simplenergy": {"machine_block":true} }] run recipe give @s simplenergy:machine_block_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"simple_battery":true} }] run recipe give @s simplenergy:simple_battery
execute if items entity @s container.* *[custom_data~{"simplenergy": {"simple_battery":true} }] run recipe give @s simplenergy:simple_battery_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"cauldron_generator":true} }] run recipe give @s simplenergy:cauldron_generator
execute if items entity @s container.* *[custom_data~{"simplenergy": {"cauldron_generator":true} }] run recipe give @s simplenergy:cauldron_generator_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"heat_generator":true} }] run recipe give @s simplenergy:heat_generator
execute if items entity @s container.* *[custom_data~{"simplenergy": {"heat_generator":true} }] run recipe give @s simplenergy:heat_generator_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"heat_generator":true} }] run recipe give @s simplenergy:heat_generator_3
execute if items entity @s container.* *[custom_data~{"simplenergy": {"heat_generator":true} }] run recipe give @s simplenergy:heat_generator_4
execute if items entity @s container.* *[custom_data~{"simplenergy": {"wind_turbine":true} }] run recipe give @s simplenergy:wind_turbine
execute if items entity @s container.* *[custom_data~{"simplenergy": {"wind_turbine":true} }] run recipe give @s simplenergy:wind_turbine_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"solar_panel":true} }] run recipe give @s simplenergy:solar_panel
execute if items entity @s container.* *[custom_data~{"simplenergy": {"solar_panel":true} }] run recipe give @s simplenergy:solar_panel_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"solar_panel":true} }] run recipe give @s simplenergy:solar_panel_3
execute if items entity @s container.* *[custom_data~{"simplenergy": {"solar_panel":true} }] run recipe give @s simplenergy:solar_panel_4
execute if items entity @s container.* *[custom_data~{"simplenergy": {"elevator":true} }] run recipe give @s simplenergy:elevator
execute if items entity @s container.* *[custom_data~{"simplenergy": {"elevator":true} }] run recipe give @s simplenergy:elevator_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"simple_cable":true} }] run recipe give @s simplenergy:simple_cable
execute if items entity @s container.* *[custom_data~{"simplenergy": {"simple_cable":true} }] run recipe give @s simplenergy:simple_cable_2
execute if items entity @s container.* *[custom_data~{"simplenergy": {"simple_cable":true} }] run recipe give @s simplenergy:simple_cable_3
execute if items entity @s container.* *[custom_data~{"simplenergy": {"simple_cable":true} }] run recipe give @s simplenergy:simple_cable_4
execute if items entity @s container.* *[custom_data~{"simplenergy": {"multimeter":true} }] run recipe give @s simplenergy:multimeter
execute if items entity @s container.* *[custom_data~{"simplenergy": {"slot_unlocker":true} }] run recipe give @s simplenergy:slot_unlocker

