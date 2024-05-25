
#> simplenergy:custom_blocks/creative_battery/replace_item
#
# @within	simplenergy:custom_blocks/creative_battery/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.creative_battery.components
data modify entity @s Item.id set from storage simplenergy:items all.creative_battery.id

