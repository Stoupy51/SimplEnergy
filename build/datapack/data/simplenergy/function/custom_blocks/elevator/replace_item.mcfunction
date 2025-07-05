
#> simplenergy:custom_blocks/elevator/replace_item
#
# @within	simplenergy:custom_blocks/elevator/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.elevator.components
data modify entity @s Item.id set from storage simplenergy:items all.elevator.id

