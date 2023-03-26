
tag @s add simplenergy.placer
execute as @e[tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all

execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:simplunium_ore"} run function simplenergy:place/simplunium_ore/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:deepslate_simplunium_ore"} run function simplenergy:place/deepslate_simplunium_ore/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:raw_simplunium_block"} run function simplenergy:place/raw_simplunium_block/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:simplunium_block"} run function simplenergy:place/simplunium_block/

execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:simple_battery"} run function simplenergy:place/simple_battery/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:advanced_battery"} run function simplenergy:place/advanced_battery/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:elite_battery"} run function simplenergy:place/elite_battery/

execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:cauldron_generator"} run function simplenergy:place/cauldron_generator/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:furnace_generator"} run function simplenergy:place/furnace_generator/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:solar_panel"} run function simplenergy:place/solar_panel/

execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_furnace"} run function simplenergy:place/electric_furnace/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_smelter"} run function simplenergy:place/electric_smelter/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_brewing_stand"} run function simplenergy:place/electric_brewing_stand/
execute if data storage smithed.custom_block:main blockApi{id:"simplenergy:electric_lamp"} run function simplenergy:place/electric_lamp/

tag @s remove simplenergy.placer

