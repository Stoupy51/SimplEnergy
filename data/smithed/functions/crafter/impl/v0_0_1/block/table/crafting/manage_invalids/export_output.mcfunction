####################
# Exports invalid items in the output slot
####################

scoreboard players reset @s smd.data
# Recreate the output and check if it's the same thing, if so add a tag to invalidate shift-clicking

data modify storage smd:crafter root.temp.export_items set value []
data modify storage smd:crafter root.temp.export_items append from block ~ ~ ~ Items[{Slot:16b}]

function smithed:crafter/impl/v0_0_1/block/table/crafting/input/read_barrel
data modify storage smd:crafter root.temp.item set from block ~ ~ ~ Items[{Slot:16b}]
data remove storage smd:crafter root.temp.item.Count
data modify storage smd:crafter root.temp.item2 set from storage smd:crafter root.temp.export_items[0]
data remove storage smd:crafter root.temp.item2.Count
execute store success score @s smd.data run data modify storage smd:crafter root.temp.item set from storage smd:crafter root.temp.item2
execute if score @s smd.data matches 0 run tag @s add smd.no_shift_click

# Spawns the items on the nearest player that opened the table's gui
function smithed:crafter/impl/v0_0_1/block/table/crafting/manage_invalids/spawn_loop

# Reset the saved tag to have nothing in it because you just exported the output
data modify entity @s ArmorItems[3].tag.smithed.stored_output set value {Slot:16b}
