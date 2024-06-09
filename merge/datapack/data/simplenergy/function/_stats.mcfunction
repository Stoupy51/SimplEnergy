
# Get numbers
execute store result score #entities simplenergy.data if entity @e[scores={energy.transfer_rate=1..}]
execute store result score #cables simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.cable]
execute store result score #devices simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.cable]
execute store result score #senders simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=!energy.receive]
execute store result score #receivers simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=!energy.send,tag=energy.receive]
execute store result score #batteries simplenergy.data if entity @e[scores={energy.transfer_rate=1..},tag=energy.send,tag=energy.receive]

execute store result score #custom_blocks simplenergy.data if entity @e[tag=simplenergy.custom_block]
execute store result score #custom_ores simplenergy.data if entity @e[tag=simplenergy.ore]
execute store result score #markers simplenergy.data if entity @e[tag=furnace_nbt_recipes.furnace]

# Display numbers
tellraw @s [{"text":"\n[Datapack Energy Stats]","color":"yellow"}]
tellraw @s ["",{"text":"Entities: ","color":"gray"},{"score":{"name":"#entities","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Cables: ","color":"gray"},{"score":{"name":"#cables","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Devices: ","color":"gray"},{"score":{"name":"#devices","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Only energy.send: ","color":"gray"},{"score":{"name":"#senders","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Only energy.receive: ","color":"gray"},{"score":{"name":"#receivers","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Send & Receive: ","color":"gray"},{"score":{"name":"#batteries","objective":"simplenergy.data"},"color":"gold"}]

tellraw @s [{"text":"\n[SimplEnergy Stats]","color":"green"}]
tellraw @s ["",{"text":"Custom blocks loaded: ","color":"gray"},{"score":{"name":"#custom_blocks","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Custom ores: ","color":"gray"},{"score":{"name":"#custom_ores","objective":"simplenergy.data"},"color":"gold"}]
tellraw @s ["",{"text":"Markers on furnaces: ","color":"gray"},{"score":{"name":"#markers","objective":"simplenergy.data"},"color":"gold"}]

