
scoreboard players set $temp smd.data 0
execute store result score $temp smd.data if data storage smd:crafter root.temp.shapeless_crafting_input[]

data modify storage smd:crafter root.temp.simplified set value []

function smithed:crafter/impl/v0_0_1/block/table/crafting/shapeless_recipes/loop

data modify storage smd:crafter root.temp.shapeless_crafting_input set from storage smd:crafter root.temp.simplified
