
data modify storage smd:crafter root.temp.b set from storage smd:crafter root.temp.simplified[1]
data remove storage smd:crafter root.temp.b.Count

execute store success score $temp1 smd.data run data modify storage smd:crafter root.temp.b set from storage smd:crafter root.temp.a
execute if score $temp1 smd.data matches 0 store result storage smd:crafter root.temp.simplified[1].Count byte -1 run data get storage smd:crafter root.temp.simplified[1].Count -1.000001