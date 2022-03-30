
scoreboard objectives remove simplenergy.data
scoreboard objectives remove simplenergy.data_2
scoreboard objectives remove simplenergy.craft_count
scoreboard objectives remove simplenergy.multimeter_use
scoreboard objectives remove simplenergy.head
scoreboard objectives remove simplenergy.chest
scoreboard objectives remove simplenergy.legs
scoreboard objectives remove simplenergy.boots

data remove storage simplenergy:items furnace
data remove storage simplenergy:items temp
data remove storage simplenergy:items all

tp @e[tag=simplenergy.destroyer] 0 -1000 0
kill @e[tag=simplenergy.destroyer]

clear @a #simplenergy:items{simplenergy:{}}

datapack disable "file/SimplEnergy [v1.8.0]"
datapack disable "file/SimplEnergy [v1.8.0].zip"
datapack disable "file/SimplEnergy"
datapack disable "file/SimplEnergy.zip"
