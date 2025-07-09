
#> simplenergy:custom_blocks/machine_block/replace_item
#
# @within	simplenergy:custom_blocks/machine_block/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.machine_block.components
data modify entity @s Item.id set from storage simplenergy:items all.machine_block.id

