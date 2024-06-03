
#> simplenergy:custom_blocks/advanced_battery/replace_item
#
# @within	simplenergy:custom_blocks/advanced_battery/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.advanced_battery.components
data modify entity @s Item.id set from storage simplenergy:items all.advanced_battery.id

# Keep energy
function simplenergy:utils/keep_energy

