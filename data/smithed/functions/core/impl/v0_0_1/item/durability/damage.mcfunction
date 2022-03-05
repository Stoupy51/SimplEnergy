execute unless data storage smd:core item.tag.smithed.durability.dur run function smithed:core/impl/v0_0_1/item/durability/init

function smithed:core/impl/v0_0_1/item/durability/calc_durability
execute if score $out smd.data matches -1..0 run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $out smd.data matches 0 run data modify storage smd:core item set value "null"
