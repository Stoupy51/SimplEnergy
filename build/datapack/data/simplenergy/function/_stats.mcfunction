
#> simplenergy:_stats
#
# @within	???
#

tellraw @s [{"translate":"simplenergy.datapack_energy_stats","color":"yellow"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..}]
tellraw @s ["",{"translate":"simplenergy.entities","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.cable]
tellraw @s ["",{"translate":"simplenergy.cables","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.cable]
tellraw @s ["",{"translate":"simplenergy.devices","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=!energy.receive]
tellraw @s ["",{"translate":"simplenergy.only_energy_send","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.send,tag=energy.receive]
tellraw @s ["",{"translate":"simplenergy.only_energy_receive","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=energy.receive]
tellraw @s ["",{"translate":"simplenergy.send_receive","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]



tellraw @s [{"translate":"simplenergy_stats","color":"green"}]

execute store result score #temp simplenergy.data if entity @e[tag=simplenergy.destroyer]
tellraw @s ["",{"translate":"simplenergy.custom_blocks_loaded","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[tag=simplenergy.ore]
tellraw @s ["",{"translate":"simplenergy.custom_ores","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[tag=furnace_nbt_recipes.furnace]
tellraw @s ["",{"translate":"simplenergy.markers_on_furnaces","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

scoreboard players reset #temp simplenergy.data

