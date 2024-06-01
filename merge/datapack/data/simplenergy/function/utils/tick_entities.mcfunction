
# Copy block data to storage
data modify storage simplenergy:temp all set from block ~ ~ ~

# Work functions
execute if entity @s[tag=simplenergy.electric_smelter] if score @s energy.storage matches 4.. if data storage simplenergy:temp all.Items[{Slot:0b}] run function simplenergy:work/electric_smelter
execute if entity @s[tag=simplenergy.electric_brewing_stand] if score @s energy.storage matches 1.. if data storage simplenergy:temp all.Items[{Slot:3b}] run function simplenergy:work/electric_brewing_stand

