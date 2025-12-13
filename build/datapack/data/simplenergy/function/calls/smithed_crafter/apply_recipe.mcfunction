
#> simplenergy:calls/smithed_crafter/apply_recipe
#
# @within	simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_ingot_x9"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/simplunium_nugget_x9"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/cauldron_generator"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/advanced_cable"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/elite_cable"}
#			simplenergy:calls/smithed_crafter/shapeless_recipes {"command":"loot replace block ~ ~ ~ container.16 loot simplenergy:i/manual"}
#
# @args		command (string)
#

# Set the consume_tools flag
data modify storage smithed.crafter:input flags set value ["consume_tools"]

# Perform the loot command
$return run $(command)

