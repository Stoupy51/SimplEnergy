
# Get in a score Item count and if it is a silk touch
scoreboard players set #item_count simplenergy.data 0
scoreboard players set #is_silk_touch simplenergy.data 0
execute store result score #item_count simplenergy.data run data get entity @s Item.Count
execute store success score #is_silk_touch simplenergy.data if data entity @s Item{id:"minecraft:stone"}

# Function tag to destroy the block
function #simplenergy:destroy_check

# Kill the item
kill @s

