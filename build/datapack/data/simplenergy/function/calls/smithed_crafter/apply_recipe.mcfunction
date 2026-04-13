
#> simplenergy:calls/smithed_crafter/apply_recipe
#
# @within	simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot_x9"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_nugget_x9"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/raw_simplunium_x9"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/cauldron_generator"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/advanced_cable"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/elite_cable"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/manual"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_block"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/raw_simplunium_block"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_helmet"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_chestplate"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_leggings"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_boots"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_sword"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_pickaxe"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_axe"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_shovel"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_hoe"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_spear"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/machine_block"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_battery"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/advanced_battery"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/elite_battery"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/cauldron_generator"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/furnace_generator"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/redstone_generator"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/heat_generator"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/wind_turbine"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/solar_panel"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_furnace"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_smelter"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/electric_brewing_stand"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/pulverizer"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/elevator"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simple_cable_x12"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/basic_item_cable_x8"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/servo_extractor"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/servo_inserter"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/multimeter"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/wrench"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/slot_unlocker"}
#			simplenergy:calls/smithed_crafter/shaped_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/battery_switcher"}
#
# @args		command (string)
#

# Set the consume_tools flag
data modify storage smithed.crafter:input flags set value ["consume_tools"]

# Perform the loot command
$return run $(command)

