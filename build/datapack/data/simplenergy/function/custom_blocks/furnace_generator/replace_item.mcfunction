
#> simplenergy:custom_blocks/furnace_generator/replace_item
#
# @within	simplenergy:custom_blocks/furnace_generator/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.furnace_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.furnace_generator.id

