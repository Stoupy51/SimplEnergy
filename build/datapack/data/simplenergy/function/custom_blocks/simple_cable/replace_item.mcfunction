
#> simplenergy:custom_blocks/simple_cable/replace_item
#
# @within	simplenergy:custom_blocks/simple_cable/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.simple_cable.components
data modify entity @s Item.id set from storage simplenergy:items all.simple_cable.id

