
#> simplenergy:custom_blocks/place
#
# @within	simplenergy:custom_blocks/on_place
#

tag @s add simplenergy.placer
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:simplunium_block"} run function simplenergy:custom_blocks/simplunium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:simplunium_ore"} run function simplenergy:custom_blocks/simplunium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:deepslate_simplunium_ore"} run function simplenergy:custom_blocks/deepslate_simplunium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:raw_simplunium_block"} run function simplenergy:custom_blocks/raw_simplunium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:machine_block"} run function simplenergy:custom_blocks/machine_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:simple_battery"} run function simplenergy:custom_blocks/simple_battery/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:advanced_battery"} run function simplenergy:custom_blocks/advanced_battery/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:elite_battery"} run function simplenergy:custom_blocks/elite_battery/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:creative_battery"} run function simplenergy:custom_blocks/creative_battery/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:cauldron_generator"} run function simplenergy:custom_blocks/cauldron_generator/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:furnace_generator"} run function simplenergy:custom_blocks/furnace_generator/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:redstone_generator"} run function simplenergy:custom_blocks/redstone_generator/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:heat_generator"} run function simplenergy:custom_blocks/heat_generator/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:wind_turbine"} run function simplenergy:custom_blocks/wind_turbine/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:solar_panel"} run function simplenergy:custom_blocks/solar_panel/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_furnace"} run function simplenergy:custom_blocks/electric_furnace/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_smelter"} run function simplenergy:custom_blocks/electric_smelter/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_brewing_stand"} run function simplenergy:custom_blocks/electric_brewing_stand/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:pulverizer"} run function simplenergy:custom_blocks/pulverizer/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:elevator"} run function simplenergy:custom_blocks/elevator/place_main
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:basic_item_cable"} run function simplenergy:custom_blocks/basic_item_cable/place_main
tag @s remove simplenergy.placer

