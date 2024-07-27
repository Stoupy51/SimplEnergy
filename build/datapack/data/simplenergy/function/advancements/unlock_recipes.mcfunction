
#> simplenergy:advancements/unlock_recipes
#
# @within	advancement simplenergy:unlock_recipes
#

# Revoke advancement
advancement revoke @s only simplenergy:unlock_recipes

## For each ingredient in inventory, unlock the recipes
# minecraft:iron_ingot
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:iron_ingot
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:multimeter
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_3

# minecraft:copper_ingot
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:copper_ingot
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:multimeter
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_2
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_3

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

# minecraft:iron_block
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:iron_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:slot_unlocker
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:furnace_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:electric_furnace

# minecraft:copper_block
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:copper_block
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery

# minecraft:redstone
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:redstone
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:furnace_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:cauldron_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_battery

# minecraft:furnace
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:furnace
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:furnace_generator
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:electric_furnace

# minecraft:stone
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:stone
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:furnace_generator

# minecraft:lapis_lazuli
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:lapis_lazuli
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:electric_furnace

# minecraft:daylight_detector
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:daylight_detector
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:solar_panel

# minecraft:coal
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:coal
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_3
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable

# minecraft:charcoal
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if items entity @s container.* minecraft:charcoal
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_4
execute if score #success simplenergy.data matches 1 run recipe give @s simplenergy:simple_cable_2

