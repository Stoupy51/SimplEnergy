
#> simplenergy:custom_blocks/servo_extractor/replace_item
#
# @executed	as @n[type=item,nbt={...},distance=..1]
#
# @within	simplenergy:custom_blocks/servo_extractor/destroy [ as @n[type=item,nbt={...},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.servo_extractor.components
data modify entity @s Item.id set from storage simplenergy:items all.servo_extractor.id

