
scoreboard players set #item_count simplenergy.data 0
scoreboard players set #is_silk_touch simplenergy.data 0
execute store result score #item_count simplenergy.data run data get entity @s Item.Count
execute store success score #is_silk_touch simplenergy.data if data entity @s Item{id:"minecraft:stone"}
function #simplenergy:destroy_check
kill @s
