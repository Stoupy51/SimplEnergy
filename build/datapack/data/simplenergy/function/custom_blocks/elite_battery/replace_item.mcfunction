
#> simplenergy:custom_blocks/elite_battery/replace_item
#
# @within	simplenergy:custom_blocks/elite_battery/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.elite_battery.components
data modify entity @s Item.id set from storage simplenergy:items all.elite_battery.id

