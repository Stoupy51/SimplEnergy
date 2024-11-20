
#> simplenergy:custom_blocks/pulverizer/tick
#
# @within	simplenergy:custom_blocks/tick
#

# Copy slots to storage
data modify storage simplenergy:temp slots set value [{},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true}]
data modify storage simplenergy:temp slots set from entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots
data modify storage simplenergy:temp Items set from block ~ ~ ~ Items

# Launch work function if enough power
scoreboard players set #working simplenergy.data 0
execute if score @s energy.storage matches 120.. run function simplenergy:custom_blocks/pulverizer/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.26 with cobblestone[item_model="simplenergy:gui/pulverizer_0",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..1599 run item replace block ~ ~ ~ container.26 with cobblestone[item_model="simplenergy:gui/pulverizer_1",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600..3199 run item replace block ~ ~ ~ container.26 with cobblestone[item_model="simplenergy:gui/pulverizer_2",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 3200..4799 run item replace block ~ ~ ~ container.26 with cobblestone[item_model="simplenergy:gui/pulverizer_3",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 4800..6399 run item replace block ~ ~ ~ container.26 with cobblestone[item_model="simplenergy:gui/pulverizer_4",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 6400.. run item replace block ~ ~ ~ container.26 with cobblestone[item_model="simplenergy:gui/pulverizer_5",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

# Update gui for each slot
function simplenergy:custom_blocks/pulverizer/gui_for_each_slot

# Update block visual depends on cook time, and playsound every second
execute if score #working simplenergy.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:pulverizer"
execute if score #working simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:pulverizer_on"
execute if score #working simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:pulverizer block @a[distance=..12] ~ ~ ~ 0.25

# Save slots to entity
data modify entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots set from storage simplenergy:temp slots

