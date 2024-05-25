
#> simplenergy:custom_blocks/electric_furnace/replace_item
#
# @within	simplenergy:custom_blocks/electric_furnace/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.electric_furnace.components
data modify entity @s Item.id set from storage simplenergy:items all.electric_furnace.id

