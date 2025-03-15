
#> simplenergy:custom_blocks/pulverizer/replace_item
#
# @within	simplenergy:custom_blocks/pulverizer/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.pulverizer.components
data modify entity @s Item.id set from storage simplenergy:items all.pulverizer.id

# Save slots to the item components
execute if data storage simplenergy:temp slots run data modify entity @s Item.components."minecraft:custom_data".simplenergy.pulverizer_slots set from storage simplenergy:temp slots
execute if data storage simplenergy:temp slots run data modify entity @s Item.components."minecraft:lore" prepend value {"translate":"simplenergy.unlocked_slots_saved","color":"dark_gray","italic":false}

