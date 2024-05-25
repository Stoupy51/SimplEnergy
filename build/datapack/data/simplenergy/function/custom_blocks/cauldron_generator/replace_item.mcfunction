
#> simplenergy:custom_blocks/cauldron_generator/replace_item
#
# @within	simplenergy:custom_blocks/cauldron_generator/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.cauldron_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.cauldron_generator.id

