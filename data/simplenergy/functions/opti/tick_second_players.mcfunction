
function simplenergy:generate/player
data modify storage simplenergy:items temp set from entity @s Inventory
execute store result score @s simplenergy.head run data get storage simplenergy:items temp[{Slot:103b}].tag.Damage
execute store result score @s simplenergy.chest run data get storage simplenergy:items temp[{Slot:102b}].tag.Damage
execute store result score @s simplenergy.legs run data get storage simplenergy:items temp[{Slot:101b}].tag.Damage
execute store result score @s simplenergy.boots run data get storage simplenergy:items temp[{Slot:100b}].tag.Damage
data remove storage simplenergy:items temp
