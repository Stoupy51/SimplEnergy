
#> simplenergy:custom_blocks/pulverizer/replace_item
#
# @within	simplenergy:custom_blocks/pulverizer/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.pulverizer.components
data modify entity @s Item.id set from storage simplenergy:items all.pulverizer.id

