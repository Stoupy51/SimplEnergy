
#> simplenergy:custom_blocks/basic_item_cable/replace_item
#
# @within	simplenergy:custom_blocks/basic_item_cable/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.basic_item_cable.components
data modify entity @s Item.id set from storage simplenergy:items all.basic_item_cable.id

