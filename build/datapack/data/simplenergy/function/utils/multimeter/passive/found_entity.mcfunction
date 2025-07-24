
#> simplenergy:utils/multimeter/passive/found_entity
#
# @executed	as @n[scores={energy.max_storage=1..},distance=..1.5] & at @s & align xyz
#
# @within	simplenergy:utils/multimeter/passive/stop_case [ as @n[scores={energy.max_storage=1..},distance=..1.5] & at @s & align xyz ]
#

# Summon glowing snowball on block
execute if block ~ ~ ~ #simplenergy:solid run summon snowball ~.5 ~.3 ~.5 {NoGravity:1b,Silent:1b,Glowing:1b,Tags:["simplenergy.multimeter_marker"]}

# Title to the player
title @a[tag=simplenergy.temp] actionbar [{"translate": "simplenergy.energy_stored","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"energy.storage"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"energy.max_storage"},"italic":false,"color":"yellow"},{"text":" kJ"},{"text":"  |  ","color":"yellow"},{"translate": "simplenergy.change_rate"},{"score":{"name":"@s","objective":"energy.change_rate"},"italic":false,"color":"yellow"},{"text":" kW"}]

# Remove the snowball by schedule function
schedule function simplenergy:utils/multimeter/passive/remove_markers 1t replace

