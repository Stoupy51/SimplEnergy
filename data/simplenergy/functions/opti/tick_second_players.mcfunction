
function simplenergy:generate/player
data modify storage simplenergy:items all.Temp set from entity @s Inventory
execute store result score @s SimplEnergy_HelmetDurability run data get storage simplenergy:items all.Temp[{Slot:103b}].tag.Damage
execute store result score @s SimplEnergy_ChestplateDurability run data get storage simplenergy:items all.Temp[{Slot:102b}].tag.Damage
execute store result score @s SimplEnergy_LeggingsDurability run data get storage simplenergy:items all.Temp[{Slot:101b}].tag.Damage
execute store result score @s SimplEnergy_BootsDurability run data get storage simplenergy:items all.Temp[{Slot:100b}].tag.Damage
data remove storage simplenergy:items all.Temp
