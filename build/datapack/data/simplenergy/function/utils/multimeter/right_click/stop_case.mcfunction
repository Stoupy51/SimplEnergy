
#> simplenergy:utils/multimeter/right_click/stop_case
#
# @executed	anchored eyes & positioned ^ ^ ^.2
#
# @within	simplenergy:utils/multimeter/right_click/raycast
#

# Tellraw Energy Display
tag @s add simplenergy.temp
execute as @n[scores={energy.max_storage=1..},distance=..1.5] run tellraw @a[tag=simplenergy.temp] [{"translate": "simplenergy.energy_stored","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"energy.storage"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"energy.max_storage"},"italic":false,"color":"yellow"},{"translate": "simplenergy.kjchange_rate"},{"score":{"name":"@s","objective":"energy.change_rate"},"italic":false,"color":"yellow"},{"text":" kW"}]
tag @s remove simplenergy.temp

