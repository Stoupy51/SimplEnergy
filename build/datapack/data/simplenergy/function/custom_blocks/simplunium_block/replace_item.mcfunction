
#> simplenergy:custom_blocks/simplunium_block/replace_item
#
# @within	simplenergy:custom_blocks/simplunium_block/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.simplunium_block.components
data modify entity @s Item.id set from storage simplenergy:items all.simplunium_block.id

