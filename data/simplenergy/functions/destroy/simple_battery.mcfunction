#Kill undesired items and replace the item
    kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},limit=1,sort=nearest,distance=..1]
    data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012100

#Update the Battery to keep Energy
    execute if score @s EF_Joule matches 1.. run function simplenergy:destroy/keep_energy
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update
