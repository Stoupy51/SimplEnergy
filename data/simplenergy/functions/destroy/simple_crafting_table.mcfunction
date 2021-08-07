#Kill undesired items
    kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012000 run kill @e[type=item,nbt={Item:{tag:{SE_CauldronGenerator:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012001 run kill @e[type=item,nbt={Item:{tag:{SE_FurnaceGenerator:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012003 run kill @e[type=item,nbt={Item:{tag:{SE_SolarPanel:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012099 run kill @e[type=item,nbt={Item:{tag:{SE_SimpleWire:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012098 run kill @e[type=item,nbt={Item:{tag:{SE_AdvancedWire:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012097 run kill @e[type=item,nbt={Item:{tag:{SE_EliteWire:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012100 run kill @e[type=item,nbt={Item:{tag:{SE_SimpleBattery:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012101 run kill @e[type=item,nbt={Item:{tag:{SE_AdvancedBattery:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012102 run kill @e[type=item,nbt={Item:{tag:{SE_EliteBattery:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012200 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricFurnace:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012202 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricSmelter:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012204 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricBrewing:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012205 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricLamp:1b}}},limit=1,sort=nearest,distance=..1]
    execute if score @s SE_Data matches 2012900 run kill @e[type=item,nbt={Item:{tag:{SE_Joulemeter:1b}}},limit=1,sort=nearest,distance=..1]

#Replace the item
    data merge entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest,distance=..1] {Item:{id:"minecraft:crafting_table",Count:1b}}
kill @s
