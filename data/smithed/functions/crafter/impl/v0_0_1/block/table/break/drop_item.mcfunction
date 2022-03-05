kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},limit=1,sort=nearest,distance=..3]
execute if entity @s[tag=smd.default] run loot spawn ~ ~ ~ loot smithed:crafter/blocks/table
execute if entity @s[tag=!smd.default] run function #smithed:crafter/events/break