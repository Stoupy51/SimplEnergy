
#> simplenergy:custom_blocks/pulverizer/entity_get_max_stack_size
#
# @within	simplenergy:custom_blocks/pulverizer/gui_active_slot
#

# Get max stack size and kill
execute store result score #max_stack_size simplenergy.data run function simplenergy:custom_blocks/pulverizer/get_max_stack_size
kill @s

