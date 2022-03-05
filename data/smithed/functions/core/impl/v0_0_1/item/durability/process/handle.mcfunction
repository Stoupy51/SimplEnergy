execute store result score $temp smd.data run data get storage smd:core item.tag.Damage
execute store result score $temp1 smd.data run data get storage smd:core item.tag.smithed.durability.damage

execute if score $temp smd.data = $temp1 smd.data run scoreboard players set $out smd.data -1
execute unless score $temp smd.data = $temp1 smd.data run function smithed:core/impl/v0_0_1/item/durability/damage