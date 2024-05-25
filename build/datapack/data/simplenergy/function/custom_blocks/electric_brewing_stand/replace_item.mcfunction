
#> simplenergy:custom_blocks/electric_brewing_stand/replace_item
#
# @within	simplenergy:custom_blocks/electric_brewing_stand/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.electric_brewing_stand.components
data modify entity @s Item.id set from storage simplenergy:items all.electric_brewing_stand.id

