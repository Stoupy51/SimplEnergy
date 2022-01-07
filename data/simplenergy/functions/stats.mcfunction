
tellraw @s [{"text":"\n[Datapack Energy Stats]","color":"yellow"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=#energy:valid_block_entities,scores={energy.transfer_rate=1..}]
tellraw @s ["",{"text":"Entities: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=#energy:valid_block_entities,scores={energy.transfer_rate=1..},tag=energy.cable]
tellraw @s ["",{"text":"Cables: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=#energy:valid_block_entities,scores={energy.transfer_rate=1..},tag=!energy.cable]
tellraw @s ["",{"text":"Devices: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=#energy:valid_block_entities,scores={energy.transfer_rate=1..},tag=energy.send,tag=!energy.receive]
tellraw @s ["",{"text":"Only energy.send: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=#energy:valid_block_entities,scores={energy.transfer_rate=1..},tag=!energy.send,tag=energy.receive]
tellraw @s ["",{"text":"Only energy.receive: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=#energy:valid_block_entities,scores={energy.transfer_rate=1..},tag=energy.send,tag=energy.receive]
tellraw @s ["",{"text":"Send & Receive: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]



tellraw @s [{"text":"\n[SimplEnergy Stats]","color":"green"}]

execute store result score Temp SimplEnergy_Data if entity @e[tag=SimplEnergy_Destroyer]
tellraw @s ["",{"text":"Custom blocks loaded: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=glow_item_frame,tag=SimplEnergy_SimpluniumOre]
tellraw @s ["",{"text":"Custom ores: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=marker,tag=SimplEnergy_ChunkScan]
tellraw @s ["",{"text":"Chunks markers: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

execute store result score Temp SimplEnergy_Data if entity @e[type=marker,tag=SimplEnergy_Furnaces]
tellraw @s ["",{"text":"Markers on furnaces: ","color":"gray"},{"score":{"name":"Temp","objective":"SimplEnergy_Data"},"color":"gold"}]

scoreboard players reset Temp SimplEnergy_Data
