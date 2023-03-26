
scoreboard objectives remove simplenergy.data
scoreboard objectives remove simplenergy.timer_data
scoreboard objectives remove simplenergy.right_click

data remove storage simplenergy:main all
data remove storage simplenergy:temp all
data remove storage simplenergy:inventory all
data remove storage simplenergy:manual Item

tp @e[tag=simplenergy.destroyer] 0 -10000 0
kill @e[tag=simplenergy.destroyer]

clear @a #simplenergy:items{ctc:{from:"stoupy:simplenergy"}}

tellraw @s {"text":"You can now disable SimplEnergy or delete it of your data packs folder","color":"green"}

