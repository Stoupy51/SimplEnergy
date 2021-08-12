data remove storage simplenergy:items Drop
data modify storage simplenergy:items Drop set from block ~ ~ ~ Items[{Slot:16b}]
execute if data storage simplenergy:items Drop run function simplenergy:craft/dropped
