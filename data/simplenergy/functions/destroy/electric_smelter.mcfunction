#Kill undesired Items & Replace the item to keep Motion
    kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},limit=1,sort=nearest,distance=..1]
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012202
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
