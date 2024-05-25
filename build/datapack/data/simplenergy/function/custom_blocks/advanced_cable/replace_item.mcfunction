
#> simplenergy:custom_blocks/advanced_cable/replace_item
#
# @within	simplenergy:custom_blocks/advanced_cable/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.advanced_cable.components
data modify entity @s Item.id set from storage simplenergy:items all.advanced_cable.id

