scoreboard objectives remove SimplEnergy_Data
scoreboard objectives remove SimplEnergy_Data2
scoreboard objectives remove SimplEnergy_CraftCount
scoreboard objectives remove SimplEnergy_MultimeterUse

data remove storage simplenergy:items all

tp @e[tag=SimplEnergy_Destroyer] 0 -1000 0
kill @e[tag=SimplEnergy_Destroyer]

clear @a #simplenergy:items{SimplEnergy_CustomItem:1b}

datapack disable "file/SimplEnergy [v1.6.0]"
