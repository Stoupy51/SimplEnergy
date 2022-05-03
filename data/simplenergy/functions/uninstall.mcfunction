
scoreboard objectives remove simplenergy.data
scoreboard objectives remove simplenergy.data_2
scoreboard objectives remove simplenergy.right_click

data remove storage simplenergy:main Inventory
data remove storage simplenergy:main Items
data remove storage simplenergy:main furnace
data remove storage simplenergy:main temp
data remove storage simplenergy:main all

tp @e[tag=simplenergy.destroyer] 0 -10000 0
kill @e[tag=simplenergy.destroyer]

clear @a #simplenergy:items{ctc:{from:"stoupy:simplenergy"}}

tellraw @s {"text":"You can now disable SimplEnergy or delete it of your data packs folder","color":"green"}
