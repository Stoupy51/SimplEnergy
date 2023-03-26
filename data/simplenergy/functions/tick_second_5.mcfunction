
# Timer
scoreboard players set #second_5 simplenergy.data -10

# Daytime
execute store result score #day_time simplenergy.data run time query daytime

# Make sure item_display blocks are not destroyed
execute as @e[tag=simplenergy.destroyer] at @s run function simplenergy:destroy/all

# Balancing energy (system)
execute as @e[tag=simplenergy.balancing,scores={energy.storage=20..}] at @s[tag=!simplenergy.balance,tag=!simplenergy.balanced] run function simplenergy:balance/all
tag @e[tag=simplenergy.balanced] remove simplenergy.balanced

