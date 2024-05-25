
#> simplenergy:custom_blocks/raw_simplunium_block/replace_item
#
# @within	simplenergy:custom_blocks/raw_simplunium_block/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.raw_simplunium_block.components
data modify entity @s Item.id set from storage simplenergy:items all.raw_simplunium_block.id

