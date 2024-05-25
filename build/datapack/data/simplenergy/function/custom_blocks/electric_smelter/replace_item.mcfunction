
#> simplenergy:custom_blocks/electric_smelter/replace_item
#
# @within	simplenergy:custom_blocks/electric_smelter/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.electric_smelter.components
data modify entity @s Item.id set from storage simplenergy:items all.electric_smelter.id

