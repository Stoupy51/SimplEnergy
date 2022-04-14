
#copy scores
scoreboard players set #energy simplenergy.data 0
execute store result score #energy simplenergy.data run data get storage energy:temp list[0].tag.energy.storage
scoreboard players operation #part_1 simplenergy.data = #energy simplenergy.data
scoreboard players operation #part_2 simplenergy.data = #energy simplenergy.data

#MJ, GJ, TJ cases
execute if score #energy simplenergy.data matches ..999999 run data modify storage simplenergy:main scale set value " MJ]"
execute if score #energy simplenergy.data matches ..999999 run scoreboard players operation #part_1 simplenergy.data /= #1000 simplenergy.data
execute if score #energy simplenergy.data matches ..999999 run scoreboard players operation #part_2 simplenergy.data %= #1000 simplenergy.data
execute if score #energy simplenergy.data matches ..999999 run scoreboard players operation #part_2 simplenergy.data /= #10 simplenergy.data

execute if score #energy simplenergy.data matches 1000000..999999999 run data modify storage simplenergy:main scale set value " GJ]"
execute if score #energy simplenergy.data matches 1000000..999999999 run scoreboard players operation #part_1 simplenergy.data /= #1000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000..999999999 run scoreboard players operation #part_2 simplenergy.data %= #1000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000..999999999 run scoreboard players operation #part_2 simplenergy.data /= #10000 simplenergy.data

execute if score #energy simplenergy.data matches 1000000000.. run data modify storage simplenergy:main scale set value " TJ]"
execute if score #energy simplenergy.data matches 1000000000.. run scoreboard players operation #part_1 simplenergy.data /= #1000000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000000.. run scoreboard players operation #part_2 simplenergy.data %= #1000000000 simplenergy.data
execute if score #energy simplenergy.data matches 1000000000.. run scoreboard players operation #part_2 simplenergy.data /= #1000000 simplenergy.data

#Apply the new lore to the item
setblock -29999999 0 2013 yellow_shulker_box

execute store result score #slot simplenergy.data run data get storage energy:temp list[0].Slot
data modify storage energy:temp list[0].Slot set value 0b
data modify block -29999999 0 2013 Items append from storage energy:temp list[0]
item modify block -29999999 0 2013 container.0 simplenergy:energy_storage_lore
execute store result storage energy:temp list[0].Slot byte 1 run scoreboard players get #slot simplenergy.data

execute unless data storage energy:temp list[0].tag.energy.has_storage_lore run data modify storage energy:temp list[0].tag.display.Lore insert -2 from block -29999999 0 2013 Items[0].tag.display.Lore[0]
execute if data storage energy:temp list[0].tag.energy.has_storage_lore run data modify storage energy:temp list[0].tag.display.Lore[-2] set from block -29999999 0 2013 Items[0].tag.display.Lore[0]
data modify storage energy:temp list[0].tag.energy.has_storage_lore set value 1b
data remove storage simplenergy:main scale
