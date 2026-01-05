
#> simplenergy:calls/common_signals/on_ore_destroyed
#
# @executed	at @s & align xyz
#
# @within	simplenergy:calls/common_signals/new_item [ at @s & align xyz ]
#

# Get in a score the item count and if it is a silk touch
scoreboard players set #item_count simplenergy.data 0
scoreboard players set #is_silk_touch simplenergy.data 0
execute store result score #item_count simplenergy.data run data get entity @s Item.count
execute store success score #is_silk_touch simplenergy.data if data entity @s Item.components."minecraft:custom_data".common_signals.silk_touch

# Try to destroy the block
function simplenergy:calls/common_signals/custom_block_destroy

