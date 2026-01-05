
#> simplenergy:custom_blocks/pulverizer/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/tick
#

# Copy slots to storage
data modify storage simplenergy:temp slots set value [{},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true},{"blocked":true}]
data modify storage simplenergy:temp slots set from entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots
data modify storage simplenergy:temp Items set from block ~ ~ ~ Items

# Launch work function if enough power
scoreboard players set #working simplenergy.data 0
execute if score @s energy.storage >= @s simplenergy.energy_rate run function simplenergy:custom_blocks/pulverizer/work

# Update gui for each slot
function simplenergy:custom_blocks/pulverizer/gui_for_each_slot

# Update gui depending on energy storage
data modify storage simplenergy:temp intruder set from storage simplenergy:temp Items[{Slot:26b}]
execute if data storage simplenergy:temp intruder unless data storage simplenergy:temp intruder.components."minecraft:custom_data".common_signals.temp run function simplenergy:custom_blocks/pulverizer/handle_item_on_gui {"index":26,"slot":26}
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.26 with minecraft:command_block[item_model="simplenergy:gui/pulverizer_2",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..1599 run item replace block ~ ~ ~ container.26 with minecraft:command_block[item_model="simplenergy:gui/pulverizer_1",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600..3199 run item replace block ~ ~ ~ container.26 with minecraft:command_block[item_model="simplenergy:gui/pulverizer_0",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 3200..4799 run item replace block ~ ~ ~ container.26 with minecraft:command_block[item_model="simplenergy:gui/pulverizer_3",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 4800..6399 run item replace block ~ ~ ~ container.26 with minecraft:command_block[item_model="simplenergy:gui/pulverizer_5",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 6400.. run item replace block ~ ~ ~ container.26 with minecraft:command_block[item_model="simplenergy:gui/pulverizer_4",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #working simplenergy.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:pulverizer"
execute if score #working simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:pulverizer_on"
execute if score #working simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:pulverizer block @a[distance=..12] ~ ~ ~ 0.25

# Save slots to entity
data modify entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots set from storage simplenergy:temp slots

