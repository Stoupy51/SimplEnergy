#Replace the item
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012897
kill @s
