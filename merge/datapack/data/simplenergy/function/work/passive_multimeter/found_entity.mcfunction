
# Summon glowing snowball on block
execute unless block ~ ~ ~ #simplenergy:non_solid run summon snowball ~.5 ~.3 ~.5 {NoGravity:1b,Silent:1b,Glowing:1b,Tags:["simplenergy.multimeter_marker"]}

# Title to the player
title @a[tag=simplenergy.temp] actionbar [{"translate":"Energy stored : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"energy.storage"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"energy.max_storage"},"italic":false,"color":"yellow"},{"translate":" kJ"},{"text":"  |  ","color":"yellow"},{"translate":"Change Rate : "},{"score":{"name":"@s","objective":"energy.change_rate"},"italic":false,"color":"yellow"},{"translate":" kW"}]

# Remove the snowball by schedule function
schedule function simplenergy:work/passive_multimeter/remove_markers 1t replace

