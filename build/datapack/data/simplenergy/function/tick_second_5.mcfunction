
#> simplenergy:tick_second_5
#
# @within	???
#

# Daytime
execute store result score #day_time simplenergy.data run time query daytime

# Balancing energy (system)
execute as @e[tag=simplenergy.balancing,scores={energy.storage=20..}] at @s[tag=!simplenergy.balance,tag=!simplenergy.balanced] run function simplenergy:balance/all
tag @e[tag=simplenergy.balanced] remove simplenergy.balanced

