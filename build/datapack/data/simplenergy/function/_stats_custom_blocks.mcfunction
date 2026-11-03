
#> simplenergy:_stats_custom_blocks
#
# @within	(public)
#

scoreboard players add #second_entities simplenergy.data 0
scoreboard players add #tick_entities simplenergy.data 0
scoreboard players add #total_custom_blocks simplenergy.data 0
scoreboard players add #total_vanilla_item_frame simplenergy.data 0
scoreboard players add #total_vanilla_waxed_copper_block simplenergy.data 0
scoreboard players add #total_vanilla_raw_iron_block simplenergy.data 0
scoreboard players add #total_vanilla_polished_deepslate simplenergy.data 0
scoreboard players add #total_vanilla_player_head simplenergy.data 0
scoreboard players add #total_vanilla_iron_trapdoor simplenergy.data 0
scoreboard players add #total_vanilla_iron_block simplenergy.data 0
scoreboard players add #total_vanilla_gold_block simplenergy.data 0
scoreboard players add #total_vanilla_furnace simplenergy.data 0
scoreboard players add #total_vanilla_daylight_detector simplenergy.data 0
scoreboard players add #total_vanilla_conduit simplenergy.data 0
scoreboard players add #total_vanilla_cauldron simplenergy.data 0
scoreboard players add #total_vanilla_brewing_stand simplenergy.data 0
scoreboard players add #total_vanilla_barrel simplenergy.data 0
scoreboard players add #total_servo_inserter simplenergy.data 0
scoreboard players add #total_servo_extractor simplenergy.data 0
scoreboard players add #total_basic_item_cable simplenergy.data 0
scoreboard players add #total_elite_cable simplenergy.data 0
scoreboard players add #total_advanced_cable simplenergy.data 0
scoreboard players add #total_simple_cable simplenergy.data 0
scoreboard players add #total_elevator simplenergy.data 0
scoreboard players add #total_pulverizer simplenergy.data 0
scoreboard players add #total_electric_brewing_stand simplenergy.data 0
scoreboard players add #total_electric_smelter simplenergy.data 0
scoreboard players add #total_electric_furnace simplenergy.data 0
scoreboard players add #total_solar_panel simplenergy.data 0
scoreboard players add #total_wind_turbine simplenergy.data 0
scoreboard players add #total_heat_generator simplenergy.data 0
scoreboard players add #total_redstone_generator simplenergy.data 0
scoreboard players add #total_furnace_generator simplenergy.data 0
scoreboard players add #total_cauldron_generator simplenergy.data 0
scoreboard players add #total_creative_battery simplenergy.data 0
scoreboard players add #total_elite_battery simplenergy.data 0
scoreboard players add #total_advanced_battery simplenergy.data 0
scoreboard players add #total_simple_battery simplenergy.data 0
scoreboard players add #total_machine_block simplenergy.data 0
scoreboard players add #total_raw_simplunium_block simplenergy.data 0
scoreboard players add #total_deepslate_simplunium_ore simplenergy.data 0
scoreboard players add #total_simplunium_ore simplenergy.data 0
scoreboard players add #total_simplunium_block simplenergy.data 0

tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_simplunium_block","fallback":"Total 'Simplunium Block'"}, ": "],{"score":{"name":"#total_simplunium_block","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_simplunium_ore","fallback":"Total 'Simplunium Ore'"}, ": "],{"score":{"name":"#total_simplunium_ore","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_deepslate_simplunium_ore","fallback":"Total 'Deepslate Simplunium Ore'"}, ": "],{"score":{"name":"#total_deepslate_simplunium_ore","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_raw_simplunium_block","fallback":"Total 'Raw Simplunium Block'"}, ": "],{"score":{"name":"#total_raw_simplunium_block","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_machine_block","fallback":"Total 'Machine Block'"}, ": "],{"score":{"name":"#total_machine_block","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_simple_battery","fallback":"Total 'Simple Battery'"}, ": "],{"score":{"name":"#total_simple_battery","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_advanced_battery","fallback":"Total 'Advanced Battery'"}, ": "],{"score":{"name":"#total_advanced_battery","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_elite_battery","fallback":"Total 'Elite Battery'"}, ": "],{"score":{"name":"#total_elite_battery","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_creative_battery","fallback":"Total 'Creative Battery'"}, ": "],{"score":{"name":"#total_creative_battery","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_cauldron_generator","fallback":"Total 'Cauldron Generator'"}, ": "],{"score":{"name":"#total_cauldron_generator","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_furnace_generator","fallback":"Total 'Furnace Generator'"}, ": "],{"score":{"name":"#total_furnace_generator","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_redstone_generator","fallback":"Total 'Redstone Generator'"}, ": "],{"score":{"name":"#total_redstone_generator","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_heat_generator","fallback":"Total 'Heat Generator'"}, ": "],{"score":{"name":"#total_heat_generator","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_wind_turbine","fallback":"Total 'Wind Turbine'"}, ": "],{"score":{"name":"#total_wind_turbine","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_solar_panel","fallback":"Total 'Solar Panel'"}, ": "],{"score":{"name":"#total_solar_panel","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_electric_furnace","fallback":"Total 'Electric Furnace'"}, ": "],{"score":{"name":"#total_electric_furnace","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_electric_smelter","fallback":"Total 'Electric Smelter'"}, ": "],{"score":{"name":"#total_electric_smelter","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_electric_brewing_stand","fallback":"Total 'Electric Brewing Stand'"}, ": "],{"score":{"name":"#total_electric_brewing_stand","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_pulverizer","fallback":"Total 'Pulverizer'"}, ": "],{"score":{"name":"#total_pulverizer","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_elevator","fallback":"Total 'Elevator'"}, ": "],{"score":{"name":"#total_elevator","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_simple_cable","fallback":"Total 'Simple Cable'"}, ": "],{"score":{"name":"#total_simple_cable","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_advanced_cable","fallback":"Total 'Advanced Cable'"}, ": "],{"score":{"name":"#total_advanced_cable","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_elite_cable","fallback":"Total 'Elite Cable'"}, ": "],{"score":{"name":"#total_elite_cable","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_basic_item_cable","fallback":"Total 'Basic Item Cable'"}, ": "],{"score":{"name":"#total_basic_item_cable","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_servo_extractor","fallback":"Total 'Servo Extractor'"}, ": "],{"score":{"name":"#total_servo_extractor","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gold"}, {"translate":"simplenergy.total_servo_inserter","fallback":"Total 'Servo Inserter'"}, ": "],{"score":{"name":"#total_servo_inserter","objective":"simplenergy.data"},"color":"yellow"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_barrel","fallback":"Vanilla 'minecraft:barrel'"}, ": "],{"score":{"name":"#total_vanilla_barrel","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_brewing_stand","fallback":"Vanilla 'minecraft:brewing_stand'"}, ": "],{"score":{"name":"#total_vanilla_brewing_stand","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_cauldron","fallback":"Vanilla 'minecraft:cauldron'"}, ": "],{"score":{"name":"#total_vanilla_cauldron","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_conduit","fallback":"Vanilla 'minecraft:conduit'"}, ": "],{"score":{"name":"#total_vanilla_conduit","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_daylight_detector","fallback":"Vanilla 'minecraft:daylight_detector'"}, ": "],{"score":{"name":"#total_vanilla_daylight_detector","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_furnace","fallback":"Vanilla 'minecraft:furnace'"}, ": "],{"score":{"name":"#total_vanilla_furnace","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_gold_block","fallback":"Vanilla 'minecraft:gold_block'"}, ": "],{"score":{"name":"#total_vanilla_gold_block","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_iron_block","fallback":"Vanilla 'minecraft:iron_block'"}, ": "],{"score":{"name":"#total_vanilla_iron_block","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_iron_trapdoor","fallback":"Vanilla 'minecraft:iron_trapdoor'"}, ": "],{"score":{"name":"#total_vanilla_iron_trapdoor","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_player_head","fallback":"Vanilla 'minecraft:player_head'"}, ": "],{"score":{"name":"#total_vanilla_player_head","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_polished_deepslate","fallback":"Vanilla 'minecraft:polished_deepslate'"}, ": "],{"score":{"name":"#total_vanilla_polished_deepslate","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_raw_iron_block","fallback":"Vanilla 'minecraft:raw_iron_block'"}, ": "],{"score":{"name":"#total_vanilla_raw_iron_block","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_waxed_copper_block","fallback":"Vanilla 'minecraft:waxed_copper_block'"}, ": "],{"score":{"name":"#total_vanilla_waxed_copper_block","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"gray"}, {"translate":"simplenergy.vanilla_minecraft_item_frame","fallback":"Vanilla 'minecraft:item_frame'"}, ": "],{"score":{"name":"#total_vanilla_item_frame","objective":"simplenergy.data"},"color":"white"}]
tellraw @s [[{"text":"- ","color":"dark_aqua"}, {"translate":"simplenergy.total_custom_blocks","fallback":"Total custom blocks: "}],{"score":{"name":"#total_custom_blocks","objective":"simplenergy.data"},"color":"aqua"}]
tellraw @s [[{"text":"- ","color":"green"}, {"translate":"simplenergy.tick_tag_function","fallback":"'tick' tag function: "}],{"score":{"name":"#tick_entities","objective":"simplenergy.data"},"color":"dark_green"}]
tellraw @s [[{"text":"- ","color":"green"}, {"translate":"simplenergy.second_tag_function","fallback":"'second' tag function: "}],{"score":{"name":"#second_entities","objective":"simplenergy.data"},"color":"dark_green"}]

