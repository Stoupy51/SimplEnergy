
#> simplenergy:utils/battery_switcher/passive/found_entity
#
# @executed	as @n[tag=simplenergy.battery_switcher,scores={energy.max_storage=1..},distance=..1.5] & at @s & align xyz & positioned ~.5 ~.3 ~.5
#
# @within	simplenergy:utils/battery_switcher/passive/stop_case [ as @n[tag=simplenergy.battery_switcher,scores={energy.max_storage=1..},distance=..1.5] & at @s & align xyz & positioned ~.5 ~.3 ~.5 ]
#

# Get current state
function simplenergy:utils/battery_switcher/get_state

# Summon glowing egg on block depending on the state
execute if block ~ ~ ~ #simplenergy:solid run summon egg ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,Tags:["simplenergy.battery_switcher_marker"]}
execute if score #state simplenergy.data matches 1 run team join simplenergy.green @e[type=egg,tag=simplenergy.battery_switcher_marker,distance=..0.5]
execute if score #state simplenergy.data matches 2 run team join simplenergy.aqua @e[type=egg,tag=simplenergy.battery_switcher_marker,distance=..0.5]
execute if score #state simplenergy.data matches 3 run team join simplenergy.gold @e[type=egg,tag=simplenergy.battery_switcher_marker,distance=..0.5]

# Title to the player
execute if score #state simplenergy.data matches 1 run title @a[tag=simplenergy.temp] actionbar [{"translate": "simplenergy.current_state","color":"gray"},{"translate": "simplenergy.input_output","color":"green"}]
execute if score #state simplenergy.data matches 2 run title @a[tag=simplenergy.temp] actionbar [{"translate": "simplenergy.current_state","color":"gray"},{"translate": "simplenergy.output","color":"aqua"}]
execute if score #state simplenergy.data matches 3 run title @a[tag=simplenergy.temp] actionbar [{"translate": "simplenergy.current_state","color":"gray"},{"translate": "simplenergy.input","color":"gold"}]

# Modify player's offhand custom model data
execute if score #state simplenergy.data matches 1 run item modify entity @a[tag=simplenergy.temp] weapon.offhand simplenergy:battery_switcher/both
execute if score #state simplenergy.data matches 2 run item modify entity @a[tag=simplenergy.temp] weapon.offhand simplenergy:battery_switcher/output
execute if score #state simplenergy.data matches 3 run item modify entity @a[tag=simplenergy.temp] weapon.offhand simplenergy:battery_switcher/input

# Remove the egg by schedule function
schedule function simplenergy:utils/battery_switcher/passive/remove_markers 1t replace

