####################
# Commands to tick tag=!smd.crafter when it is open
####################

# If there are any items in improper slots, manage them
execute if entity @s[predicate=smithed:crafter/block/table/invalid_items] run function smithed:crafter/impl/v0_0_1/block/table/crafting/manage_invalids/move

# Output Management

## If output changed from full to full or empty to full, set score (Also copies tags into this entity)
execute store success score @s smd.data run data modify entity @s ArmorItems[3].tag.smithed.stored_output set from block ~ ~ ~ Items[{Slot:16b}]

## If the output changed from full to empty, set score
execute store success score @s smd.data unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} if data entity @s ArmorItems[3].tag.smithed.stored_output.id run data modify entity @s ArmorItems[3].tag.smithed.stored_output set value {Slot:16b}

## If the score changed, run update output commands
execute if entity @s[scores={smd.data=1..}] run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/check

# Input Management

## If input changes, then run updated_input commands
execute store success score @s smd.data run data modify entity @s ArmorItems[3].tag.smithed.stored_barrel_data set from block ~ ~ ~ Items
execute if entity @s[scores={smd.data=1..}] if data block ~ ~ ~ Items run function smithed:crafter/impl/v0_0_1/block/table/crafting/input/read_barrel
