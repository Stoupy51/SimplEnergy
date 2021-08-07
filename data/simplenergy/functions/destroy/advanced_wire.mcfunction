#Replace the item to keep Motion
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:player_head"}},limit=1,sort=nearest,distance=..1,nbt={Item:{tag:{SkullOwner:{Id:[I;-1416541,25415515,-3515615,-4156415]}}}}] Item set from storage simplenergy:items 2012400
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
