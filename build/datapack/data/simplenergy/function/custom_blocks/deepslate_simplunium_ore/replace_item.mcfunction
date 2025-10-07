
#> simplenergy:custom_blocks/deepslate_simplunium_ore/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1]
#
# @within	simplenergy:custom_blocks/deepslate_simplunium_ore/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1] ]
#

# If silk touch applied
execute if score #is_silk_touch simplenergy.data matches 1 run data modify entity @s Item.id set from storage simplenergy:items all.deepslate_simplunium_ore.id
execute if score #is_silk_touch simplenergy.data matches 1 run data modify entity @s Item.components set from storage simplenergy:items all.deepslate_simplunium_ore.components

# Else, no silk touch
execute if score #is_silk_touch simplenergy.data matches 0 run data modify entity @s Item.id set from storage simplenergy:items all.raw_simplunium.id
execute if score #is_silk_touch simplenergy.data matches 0 run data modify entity @s Item.components set from storage simplenergy:items all.raw_simplunium.components
execute if score #is_silk_touch simplenergy.data matches 0 run scoreboard players set #divider simplenergy.data 100
execute if score #is_silk_touch simplenergy.data matches 0 store result score #multiplier simplenergy.data run random value 100..200
execute if score #is_silk_touch simplenergy.data matches 0 run scoreboard players operation #item_count simplenergy.data *= #multiplier simplenergy.data
execute if score #is_silk_touch simplenergy.data matches 0 run scoreboard players operation #item_count simplenergy.data /= #divider simplenergy.data

# Get item count in every case
execute store result entity @s Item.count byte 1 run scoreboard players get #item_count simplenergy.data

