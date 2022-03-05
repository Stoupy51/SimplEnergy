data modify storage smd:core item set from entity @s SelectedItem

function smithed:core/impl/v0_0_1/item/durability/damage/force

execute unless data storage smd:core {item:"null"} unless score $out smd.data matches -1 run item modify entity @s weapon.mainhand smithed:core/update_nbt
execute if data storage smd:core {item:"null"} run item replace entity @s weapon.mainhand with air