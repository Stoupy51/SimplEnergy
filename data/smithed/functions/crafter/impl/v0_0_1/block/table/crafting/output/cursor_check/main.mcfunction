####################
# Counts all items in player's inventory
####################

tag @s remove smd.shift_clicked
scoreboard players reset $temp smd.data
scoreboard players reset $temp1 smd.data
data modify storage smd:crafter root.temp.Inventory set from entity @s Inventory
execute store result score @s smd.data run data get entity @s Inventory
function smithed:crafter/impl/v0_0_1/block/table/crafting/output/cursor_check/loop
execute store result score @s smd.data run clear @s #smithed:crafter/all 0
execute if score $temp1 smd.data = @s smd.data run tag @s add smd.shift_clicked
