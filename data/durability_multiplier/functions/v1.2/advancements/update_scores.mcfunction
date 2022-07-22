
tag @s add durability_multiplier.durability_changed

#Update player scores
data modify storage durability_multiplier:main Inventory set from entity @s Inventory
execute store result score @s durability_multiplier.head run data get storage durability_multiplier:main Inventory[{Slot:103b}].tag.Damage
execute store result score @s durability_multiplier.chest run data get storage durability_multiplier:main Inventory[{Slot:102b}].tag.Damage
execute store result score @s durability_multiplier.legs run data get storage durability_multiplier:main Inventory[{Slot:101b}].tag.Damage
execute store result score @s durability_multiplier.feet run data get storage durability_multiplier:main Inventory[{Slot:100b}].tag.Damage
execute store result score @s durability_multiplier.offhand run data get storage durability_multiplier:main Inventory[{Slot:-106b}].tag.Damage
execute store result score @s durability_multiplier.mainhand run data get entity @s SelectedItem.tag.Damage
data remove storage durability_multiplier:main Inventory

