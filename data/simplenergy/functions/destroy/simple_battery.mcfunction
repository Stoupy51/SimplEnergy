#Kill undesired items and replace the item
    kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},limit=1,sort=nearest,distance=..1]
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012100

#Update the Battery to keep Energy
    execute if score @s EF_Joule matches 1.. store result storage simplenergy:energy X int 1 run scoreboard players get @s EF_Joule
    execute if score @s EF_Joule matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,distance=..1,nbt={Item:{tag:{SE_SimpleBattery:1b}}}] Item.tag.BlockEntityTag.Items[0].tag.Energy set from storage simplenergy:energy X
    execute if score @s EF_Joule matches 1.. run setblock ~ ~ ~ oak_sign{Text1:'[{"text":"[Charge : ","color":"gray","italic":false},{"nbt":"X","storage":"simplenergy:energy"},{"text":" Joules]"}]'}
    execute if score @s EF_Joule matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,distance=..1,nbt={Item:{tag:{SE_SimpleBattery:1b}}}] Item.tag.display.Lore append from block ~ ~ ~ Text1
    execute if score @s EF_Joule matches 1.. run setblock ~ ~ ~ air
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
