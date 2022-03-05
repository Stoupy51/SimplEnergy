execute store result score $temp smd.data run data get storage smd:core item.tag.Damage
scoreboard players remove $temp smd.data 1
execute store result storage smd:core item.tag.smithed.durability.damage int 1 run scoreboard players get $temp smd.data

function smithed:core/impl/v0_0_1/item/durability/process/handle