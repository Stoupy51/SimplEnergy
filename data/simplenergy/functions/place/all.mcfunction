
tag @s add SimplEnergy_Placer

execute if data storage smd:core blockApi{id:"simplenergy:simplunium_ore"} run function simplenergy:place/simplunium_ore/main
execute if data storage smd:core blockApi{id:"simplenergy:simplunium_block"} run function simplenergy:place/simplunium_block/main

execute if data storage smd:core blockApi{id:"simplenergy:simple_battery"} run function simplenergy:place/simple_battery/main
execute if data storage smd:core blockApi{id:"simplenergy:advanced_battery"} run function simplenergy:place/advanced_battery/main
execute if data storage smd:core blockApi{id:"simplenergy:elite_battery"} run function simplenergy:place/elite_battery/main

execute if data storage smd:core blockApi{id:"simplenergy:cauldron_generator"} run function simplenergy:place/cauldron_generator/main
execute if data storage smd:core blockApi{id:"simplenergy:furnace_generator"} run function simplenergy:place/furnace_generator/main
execute if data storage smd:core blockApi{id:"simplenergy:solar_panel"} run function simplenergy:place/solar_panel/main

execute if data storage smd:core blockApi{id:"simplenergy:electric_furnace"} run function simplenergy:place/electric_furnace/main
execute if data storage smd:core blockApi{id:"simplenergy:electric_smelter"} run function simplenergy:place/electric_smelter/main
execute if data storage smd:core blockApi{id:"simplenergy:electric_brewing_stand"} run function simplenergy:place/electric_brewing_stand/main
execute if data storage smd:core blockApi{id:"simplenergy:electric_lamp"} run function simplenergy:place/electric_lamp/main

tag @s remove SimplEnergy_Placer