data modify storage smd:core item set from entity @s Inventory[{Slot:101b}]

function smithed:core/impl/v0_0_1/item/durability/damage/force

execute unless data storage smd:core {item:"null"} unless score $out smd.data matches -1 run item modify entity @s armor.legs smithed:core/update_nbt
execute if data storage smd:core {item:"null"} run item replace entity @s armor.legs with air