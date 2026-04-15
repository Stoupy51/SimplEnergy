
#> simplenergy:custom_blocks/pulverizer/get_pulverizer_recipe
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/gui_active_slot
#

# Get the recipe
function #simplenergy:calls/pulverizer_recipes

# Place in storage the given output (if any)
execute if score #found simplenergy.data matches 1 run data modify storage simplenergy:main pulverizer.output set from entity @s item

# Kill temporary entity
kill @s

