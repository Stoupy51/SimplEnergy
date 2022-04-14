
data modify storage simplenergy:main furnace set from block ~ ~ ~
execute if data storage simplenergy:main furnace.Items[{Slot:0b}] run function simplenergy:furnace/main
