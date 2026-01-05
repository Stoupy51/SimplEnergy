
#> simplenergy:_stats
#
# @within	???
#

# Get numbers
execute store result score #entities simplenergy.data if entity @e[scores={energy.transfer_rate=1..}]
execute store result score #cables simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.cable]
execute store result score #devices simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.cable]
execute store result score #senders simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=!energy.receive]
execute store result score #receivers simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.send,tag=energy.receive]
execute store result score #batteries simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=energy.receive]

execute store result score #custom_blocks simplenergy.data if entity @e[tag=simplenergy.custom_block]
execute store result score #custom_ores simplenergy.data if entity @e[tag=simplenergy.vanilla.minecraft_polished_deepslate]
execute store result score #markers simplenergy.data if entity @e[tag=furnace_nbt_recipes.furnace]

# Display numbers
tellraw @s [{"translate": "simplenergy.datapack_energy_stats","color":"yellow"}]
tellraw @s ["",{"translate": "simplenergy.entities","color":"gray"},{"score":{"name":"#entities","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.cables","color":"gray"},{"score":{"name":"#cables","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.devices","color":"gray"},{"score":{"name":"#devices","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.only_energy_send","color":"gray"},{"score":{"name":"#senders","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.only_energy_receive","color":"gray"},{"score":{"name":"#receivers","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.send_receive","color":"gray"},{"score":{"name":"#batteries","objective":"simplenergy.data"},"color":"gold"}]

tellraw @s [{"translate": "simplenergy_stats","color":"green"}]
tellraw @s ["",{"translate": "simplenergy.custom_blocks_loaded","color":"gray"},{"score":{"name":"#custom_blocks","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.custom_ores","color":"gray"},{"score":{"name":"#custom_ores","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"translate": "simplenergy.markers_on_furnaces","color":"gray"},{"score":{"name":"#markers","objective":"simplenergy.data"},"color":"gold"}]

