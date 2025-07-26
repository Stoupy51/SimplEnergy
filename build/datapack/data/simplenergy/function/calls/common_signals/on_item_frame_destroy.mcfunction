
#> simplenergy:calls/common_signals/on_item_frame_destroy
#
# @executed	at @s & align xyz
#
# @within	simplenergy:calls/common_signals/new_item [ at @s & align xyz ]
#

# Try to destroy the block
execute as @e[tag=simplenergy.custom_block,dx=0,dy=0,dz=0] at @s run function simplenergy:custom_blocks/destroy

# If still alive, it means that the item_frame has been destroyed too,
execute at @s if entity @s[distance=..1] run function simplenergy:calls/common_signals/item_frame_destroy_alt
execute at @s if entity @s[distance=..1] as @n[type=item,nbt={Item:{id:"minecraft:item_frame"}},distance=..1] run function simplenergy:calls/common_signals/item_frame_destroy_alt

