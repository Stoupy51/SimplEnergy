data remove storage simplenergy:items all.Drop
data modify storage simplenergy:items all.Drop set from block ~ ~ ~ Items[{Slot:16b}]
execute if data storage simplenergy:items all.Drop run function simplenergy:craft/dropped
