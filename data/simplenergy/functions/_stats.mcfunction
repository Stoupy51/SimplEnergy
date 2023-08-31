
tellraw @s [{"text":"\n[Datapack Energy Stats]","color":"yellow"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..}]
tellraw @s ["",{"text":"Entities: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.cable]
tellraw @s ["",{"text":"Cables: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.cable]
tellraw @s ["",{"text":"Devices: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=!energy.receive]
tellraw @s ["",{"text":"Only energy.send: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.send,tag=energy.receive]
tellraw @s ["",{"text":"Only energy.receive: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=energy.receive]
tellraw @s ["",{"text":"Send & Receive: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]



tellraw @s [{"text":"\n[SimplEnergy Stats]","color":"green"}]

execute store result score #temp simplenergy.data if entity @e[tag=simplenergy.destroyer]
tellraw @s ["",{"text":"Custom blocks loaded: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[tag=simplenergy.ore]
tellraw @s ["",{"text":"Custom ores: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

execute store result score #temp simplenergy.data if entity @e[tag=furnace_nbt_recipes.furnace]
tellraw @s ["",{"text":"Markers on furnaces: ","color":"gray"},{"score":{"name":"#temp","objective":"simplenergy.data"},"color":"gold"}]

scoreboard players reset #temp simplenergy.data

