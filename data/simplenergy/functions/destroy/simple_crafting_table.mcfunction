#Kill undesired items
	kill @e[type=item,nbt={Item:{tag:{SE_CustomTextureItem:1s}}},sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012000 run kill @e[type=item,nbt={Item:{tag:{SE_CauldronGenerator:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012001 run kill @e[type=item,nbt={Item:{tag:{SE_FurnaceGenerator:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012003 run kill @e[type=item,nbt={Item:{tag:{SE_SolarPanel:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012099 run kill @e[type=item,nbt={Item:{tag:{SE_SimpleWire:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012098 run kill @e[type=item,nbt={Item:{tag:{SE_AdvancedWire:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012097 run kill @e[type=item,nbt={Item:{tag:{SE_EliteWire:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012100 run kill @e[type=item,nbt={Item:{tag:{SE_SimpleBattery:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012101 run kill @e[type=item,nbt={Item:{tag:{SE_AdvancedBattery:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012102 run kill @e[type=item,nbt={Item:{tag:{SE_EliteBattery:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012200 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricFurnace:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012202 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricSmelter:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012204 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricBrewing:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012205 run kill @e[type=item,nbt={Item:{tag:{SE_ElectricLamp:1s}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SE_Data matches 2012900 run kill @e[type=item,nbt={Item:{tag:{SE_Joulemeter:1s}}},limit=1,sort=nearest,distance=..1]

#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},predicate=!stardust:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012004
kill @s
