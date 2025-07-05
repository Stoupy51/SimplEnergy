
#> simplenergy:custom_blocks/heat_generator/replace_item
#
# @within	simplenergy:custom_blocks/heat_generator/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.heat_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.heat_generator.id

