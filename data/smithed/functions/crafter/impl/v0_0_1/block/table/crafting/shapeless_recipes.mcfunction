####################
# Shapeless recipes for crafting
####################

function smithed:crafter/impl/v0_0_1/block/table/crafting/shapeless_recipes/simplify
execute store result score count smd.data if data storage smd:crafter root.temp.shapeless_crafting_input[]

function #smithed:crafter/events/shapeless_recipes
