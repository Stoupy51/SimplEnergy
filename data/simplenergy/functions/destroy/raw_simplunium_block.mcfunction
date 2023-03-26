
# Replace the item
data modify entity @e[type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:main all.raw_simplunium_block

# Remove the block
kill @s

