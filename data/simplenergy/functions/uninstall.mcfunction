scoreboard objectives remove SE_Data
scoreboard objectives remove SE_Data2
scoreboard objectives remove SE_CraftCount
scoreboard objectives remove SE_MultimeterUse

data remove storage simplenergy:items all

tp @e[tag=SE_Destroyer] 0 -1000 0
kill @e[tag=SE_Destroyer]

clear @a #simplenergy:items{SE_CustomItem:1b}

datapack disable "file/SimplEnergy [v1.6.0]"
