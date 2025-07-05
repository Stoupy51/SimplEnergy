
#> simplenergy:custom_blocks/redstone_generator/replace_item
#
# @within	simplenergy:custom_blocks/redstone_generator/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.redstone_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.redstone_generator.id

