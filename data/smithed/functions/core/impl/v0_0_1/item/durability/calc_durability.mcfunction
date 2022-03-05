execute store result score $temp smd.data run data get storage smd:core item.tag.smithed.durability.dur
execute store result score $temp1 smd.data run data get storage smd:core item.tag.smithed.durability.damage
execute store result score $temp2 smd.data run data get storage smd:core item.tag.Damage
execute store result score $temp3 smd.data run data get storage smd:core item.tag.smithed.durability.max
function smithed:core/impl/v0_0_1/item/durability/get_max

#change internal dur value

## durability.damage -= Damage
scoreboard players operation $temp1 smd.data -= $temp2 smd.data

## durability.dur += (durability.damage - Damage)
scoreboard players operation $temp smd.data += $temp1 smd.data

## (durability.damage - Damage) + Damage
scoreboard players operation $temp1 smd.data += $temp2 smd.data

## if (base.MaxDur > 1 && durability.dur > durability.max) then durability.dur = durability.max
execute if score $temp4 smd.data matches 1.. if score $temp smd.data > $temp3 smd.data run scoreboard players operation $temp smd.data = $temp3 smd.data

## if (durability.dur <= -1) then durability.dur = -1
execute if score $temp smd.data matches ..-1 run scoreboard players set $temp smd.data -1

## if (base.MaxDur >= 1) then item.tag.smithed.durability.dur = durability.dur 
execute if score $temp4 smd.data matches 1.. store result storage smd:core item.tag.smithed.durability.dur int 1 run scoreboard players get $temp smd.data

#set dur bar

## temp5 = base.MaxDur
scoreboard players operation $temp5 smd.data = $temp4 smd.data

## temp6 = base.MaxDur - 8
scoreboard players operation $temp6 smd.data = $temp4 smd.data
# scoreboard players remove $temp6 smd.data 8

## temp5 *= durability.dur
scoreboard players operation $temp5 smd.data *= $temp smd.data

## temp5 /= durability.max
scoreboard players operation $temp5 smd.data /= $temp3 smd.data

## base.MaxDur -= temp5
scoreboard players operation $temp4 smd.data -= $temp5 smd.data

## if (base.MaxDur > 1 && base.MaxDur > temp6) then base.MaxDur = temp6 
execute if score $temp4 smd.data matches 1.. if score $temp4 smd.data > $temp6 smd.data run scoreboard players operation $temp4 smd.data = $temp6 smd.data

execute if score $temp4 smd.data matches 1.. store result storage smd:core item.tag.Damage int 1 run scoreboard players get $temp4 smd.data
execute if score $temp4 smd.data matches 1.. store result storage smd:core item.tag.smithed.durability.damage int 1 run scoreboard players get $temp4 smd.data

#change durability of unbreakable items
execute if score $temp4 smd.data matches 0 store result score $temp smd.data run data get storage smd:core item.tag.smithed.durability.dur
execute if score $temp4 smd.data matches 0 run scoreboard players remove $temp smd.data 1
execute if score $temp4 smd.data matches 0 store result storage smd:core item.tag.smithed.durability.dur int 1 run scoreboard players get $temp smd.data

#output state
scoreboard players set $out smd.data 1
execute if score $temp smd.data matches ..-1 if data storage smd:core item.tag.smithed.durability run scoreboard players set $out smd.data 0
execute if score $temp smd.data matches ..-1 if data storage smd:core item.tag.smithed.durability{no_break:1b} run scoreboard players set $out smd.data -1