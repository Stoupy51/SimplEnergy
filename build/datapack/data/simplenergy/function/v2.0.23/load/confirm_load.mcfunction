
#> simplenergy:v2.0.23/load/confirm_load
#
# @within	simplenergy:v2.0.23/load/valid_dependencies
#

scoreboard objectives add simplenergy.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add simplenergy.elevator_time dummy
scoreboard objectives add simplenergy.private dummy
team add simplenergy.green
team add simplenergy.gold
team add simplenergy.aqua
team modify simplenergy.green color green
team modify simplenergy.gold color gold
team modify simplenergy.aqua color aqua

# Score for energy usage or generation
scoreboard objectives add simplenergy.energy_rate dummy

# Opening manual detection
scoreboard objectives add simplenergy.open_manual minecraft.used:minecraft.written_book

# Confirm load
tellraw @a[tag=convention.debug] {"translate":"simplenergy.loaded_simplenergy_v2_0_23","color":"green"}
scoreboard players set #simplenergy.loaded load.status 1
function simplenergy:v2.0.23/load/set_items_storage

# Score for the on/off state of servo mechanisms
scoreboard objectives add simplenergy.servo_off dummy

