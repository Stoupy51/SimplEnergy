data modify storage smd:crafter root.temp.shapeless_crafting_input set from storage smd:crafter root.temp.crafting_input.0
data modify storage smd:crafter root.temp.shapeless_crafting_input append from storage smd:crafter root.temp.crafting_input.1[]
data modify storage smd:crafter root.temp.shapeless_crafting_input append from storage smd:crafter root.temp.crafting_input.2[]

execute if data storage smd:crafter root.temp.shapeless_crafting_input[] run function smithed:crafter/impl/v0_0_1/block/table/crafting/shapeless_recipes/main