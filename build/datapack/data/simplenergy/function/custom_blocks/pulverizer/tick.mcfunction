
#> simplenergy:custom_blocks/pulverizer/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/tick
#

# Slots are unlocked_<index> tags and progress_<index> scores, read from the NBT the item gave on the first tick
execute unless entity @s[tag=simplenergy.pulverizer_unlocked_0] run function simplenergy:custom_blocks/pulverizer/load_slots
data remove storage simplenergy:temp Items

# Launch work function if enough power
scoreboard players set #working simplenergy.data 0
execute if score @s energy.storage >= @s simplenergy.energy_rate run function simplenergy:custom_blocks/pulverizer/work

# Update gui for each slot
function simplenergy:custom_blocks/pulverizer/gui_for_each_slot

# Update gui depending on energy storage, index 0 being always unlocked so that an item put there is dropped
execute if items block ~ ~ ~ container.26 *[!custom_data~{"common_signals":{"temp":true}}] run function simplenergy:custom_blocks/pulverizer/handle_item_on_gui {"index":0,"slot":26}
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.26 with minecraft:recovery_compass[item_model="simplenergy:gui/pulverizer_0",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..1599 run item replace block ~ ~ ~ container.26 with minecraft:recovery_compass[item_model="simplenergy:gui/pulverizer_1",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600..3199 run item replace block ~ ~ ~ container.26 with minecraft:recovery_compass[item_model="simplenergy:gui/pulverizer_2",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 3200..4799 run item replace block ~ ~ ~ container.26 with minecraft:recovery_compass[item_model="simplenergy:gui/pulverizer_3",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 4800..6399 run item replace block ~ ~ ~ container.26 with minecraft:recovery_compass[item_model="simplenergy:gui/pulverizer_4",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 6400.. run item replace block ~ ~ ~ container.26 with minecraft:recovery_compass[item_model="simplenergy:gui/pulverizer_5",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #working simplenergy.data matches 0 unless items entity @s contents *[minecraft:item_model="simplenergy:pulverizer"] run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:pulverizer"
execute if score #working simplenergy.data matches 1.. unless items entity @s contents *[minecraft:item_model="simplenergy:pulverizer_on"] run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:pulverizer_on"
execute if score #working simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:pulverizer block @a[distance=..12] ~ ~ ~ 0.25

