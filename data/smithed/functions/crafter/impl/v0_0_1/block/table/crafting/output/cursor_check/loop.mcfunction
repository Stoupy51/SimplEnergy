####################
# Checks if the player's cursor works
####################

scoreboard players remove @s smd.data 1
execute store result score $temp smd.data run data get storage smd:crafter root.temp.Inventory[0].Count
scoreboard players operation $temp1 smd.data += $temp smd.data
data remove storage smd:crafter root.temp.Inventory[0]
execute if entity @s[scores={smd.data=1..}] run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/cursor_check/loop
