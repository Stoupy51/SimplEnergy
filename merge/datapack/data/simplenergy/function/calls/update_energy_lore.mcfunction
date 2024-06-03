
## Copy scores
scoreboard players set #energy simplenergy.data 0
execute store result score #energy simplenergy.data run data get storage energy:temp list[0].components."minecraft:custom_data".energy.storage
scoreboard players operation #part_1 simplenergy.data = #energy simplenergy.data
scoreboard players operation #part_2 simplenergy.data = #energy simplenergy.data
data modify storage simplenergy:temp macro set value {part_1:0, part_2:0, scale:""}
scoreboard players set #10 simplenergy.data 10
scoreboard players set #1000 simplenergy.data 1000
scoreboard players set #10000 simplenergy.data 10000
scoreboard players set #1000000 simplenergy.data 1000000
scoreboard players set #10000000 simplenergy.data 10000000
scoreboard players set #1000000000 simplenergy.data 1000000000

## kJ, MJ, GJ, TJ cases
# kJ
execute if score #energy simplenergy.data matches ..999 run data modify storage simplenergy:temp macro.scale set value " kJ]"
execute if score #energy simplenergy.data matches ..999 run scoreboard players set #part_2 simplenergy.data 0

# MJ
execute if score #energy simplenergy.data matches 1000..999999 run data modify storage simplenergy:temp macro.scale set value " MJ]"
execute if score #energy simplenergy.data matches 1000..999999 run scoreboard players operation #part_1 simplenergy.data /= #1000 simplenergy.data
execute if score #energy simplenergy.data matches 1000..999999 run scoreboard players operation #part_2 simplenergy.data %= #1000 simplenergy.data
execute if score #energy simplenergy.data matches 1000..999999 run scoreboard players operation #part_2 simplenergy.data /= #10 simplenergy.data

# GJ
execute if score #energy simplenergy.data matches 1000000..999999999 run data modify storage simplenergy:temp macro.scale set value " GJ]"
execute if score #energy simplenergy.data matches 1000000..999999999 run scoreboard players operation #part_1 simplenergy.data /= #1000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000..999999999 run scoreboard players operation #part_2 simplenergy.data %= #1000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000..999999999 run scoreboard players operation #part_2 simplenergy.data /= #10000 simplenergy.data

# TJ
execute if score #energy simplenergy.data matches 1000000000.. run data modify storage simplenergy:temp macro.scale set value " TJ]"
execute if score #energy simplenergy.data matches 1000000000.. run scoreboard players operation #part_1 simplenergy.data /= #1000000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000000.. run scoreboard players operation #part_2 simplenergy.data %= #1000000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000000.. run scoreboard players operation #part_2 simplenergy.data /= #1000000 simplenergy.data

## Apply the new lore to the item
setblock -30000000 14 1610 yellow_shulker_box
execute store result storage simplenergy:temp macro.part_1 int 1 run scoreboard players get #part_1 simplenergy.data
execute store result storage simplenergy:temp macro.part_2 int 1 run scoreboard players get #part_2 simplenergy.data

# Remove slot, update lore, and add slot back
execute store result score #slot simplenergy.data run data get storage energy:temp list[0].Slot
data modify storage energy:temp list[0].Slot set value 0b
data modify block -30000000 14 1610 Items append from storage energy:temp list[0]
function simplenergy:calls/update_energy_lore_macro with storage simplenergy:temp macro
execute store result storage energy:temp list[0].Slot byte 1 run scoreboard players get #slot simplenergy.data

# Add the lore to the item at the correct index
execute unless data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore" insert -2 from block -30000000 14 1610 Items[0].components."minecraft:lore"[0]
execute if data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore"[-2] set from block -30000000 14 1610 Items[0].components."minecraft:lore"[0]
data modify storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore set value 1b
data remove storage simplenergy:temp macro

