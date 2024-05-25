
#> simplenergy:custom_blocks/solar_panel/replace_item
#
# @within	simplenergy:custom_blocks/solar_panel/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.solar_panel.components
data modify entity @s Item.id set from storage simplenergy:items all.solar_panel.id

