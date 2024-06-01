
# SimplEnergy - Destroyer when using Mechanization's wrench
execute if entity @s[tag=simplenergy.destroyer] run setblock ~ ~ ~ air destroy
execute if entity @s[tag=simplenergy.destroyer] run function simplenergy:destroy/all

