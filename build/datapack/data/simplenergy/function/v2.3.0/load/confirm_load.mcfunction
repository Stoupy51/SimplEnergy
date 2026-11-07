
#> simplenergy:v2.3.0/load/confirm_load
#
# @within	simplenergy:v2.3.0/load/valid_dependencies
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
tellraw @a[tag=convention.debug] {"translate":"simplenergy.loaded_simplenergy_v2_3_0","fallback":"[Loaded SimplEnergy v2.3.0]","color":"green"}
scoreboard players set #simplenergy.loaded load.status 1
function simplenergy:v2.3.0/load/set_items_storage

scoreboard objectives add simplenergy.pulverizer_progress_0 dummy
scoreboard objectives add simplenergy.pulverizer_progress_1 dummy
scoreboard objectives add simplenergy.pulverizer_progress_2 dummy
scoreboard objectives add simplenergy.pulverizer_progress_3 dummy
scoreboard objectives add simplenergy.pulverizer_progress_4 dummy
scoreboard objectives add simplenergy.pulverizer_progress_5 dummy
scoreboard objectives add simplenergy.pulverizer_progress_6 dummy
scoreboard objectives add simplenergy.pulverizer_progress_7 dummy

# Chunk of the persistent utility entities
forceload add -30000000 1600

# Persistent item_display 'pulverizer_recipe'
execute unless entity 88c74f57-e693-5c1c-b41f-8b268af30ed5 run summon minecraft:item_display -30000000 0 1600 {UUID:uuid("88c74f57-e693-5c1c-b41f-8b268af30ed5"),Tags:["smithed.entity","smithed.strict"],view_range:0f}

# Score for the on/off state of servo mechanisms
scoreboard objectives add simplenergy.servo_off dummy

