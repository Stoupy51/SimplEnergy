
#> simplenergy:custom_blocks/simple_battery/replace_item
#
# @within	simplenergy:custom_blocks/simple_battery/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.simple_battery.components
data modify entity @s Item.id set from storage simplenergy:items all.simple_battery.id

