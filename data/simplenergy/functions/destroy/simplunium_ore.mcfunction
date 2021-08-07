#Replace the item
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:deepslate_coal_ore"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012899
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012898
kill @s
