#Kill undesired items
	kill @e[type=item,nbt={Item:{tag:{SimplEnergy_CustomTextureItem:1b}}},sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012000 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_CauldronGenerator:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012001 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_FurnaceGenerator:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012003 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_SolarPanel:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012099 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_SimpleCable:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012098 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_AdvancedCable:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012097 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_EliteCable:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012100 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_SimpleBattery:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012101 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_AdvancedBattery:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012102 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_EliteBattery:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012200 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_ElectricFurnace:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012202 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_ElectricSmelter:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012204 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_ElectricBrewing:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012205 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_ElectricLamp:1b}}},limit=1,sort=nearest,distance=..1]
	execute if score @s SimplEnergy_Data matches 2012900 run kill @e[type=item,nbt={Item:{tag:{SimplEnergy_Multimeter:1b}}},limit=1,sort=nearest,distance=..1]

#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012004
kill @s
