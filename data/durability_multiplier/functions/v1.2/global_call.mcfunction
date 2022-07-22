
#Storing player inventory
data modify storage durability_multiplier:main Inventory set from entity @s Inventory
data modify storage durability_multiplier:main head set from storage durability_multiplier:main Inventory[{Slot:103b}]
data modify storage durability_multiplier:main chest set from storage durability_multiplier:main Inventory[{Slot:102b}]
data modify storage durability_multiplier:main legs set from storage durability_multiplier:main Inventory[{Slot:101b}]
data modify storage durability_multiplier:main feet set from storage durability_multiplier:main Inventory[{Slot:100b}]
data modify storage durability_multiplier:main offhand set from storage durability_multiplier:main Inventory[{Slot:-106b}]
data modify storage durability_multiplier:main mainhand set from entity @s SelectedItem
data remove storage durability_multiplier:main Inventory
setblock -30000000 14 1610 yellow_shulker_box

#Checking Durability Change
execute store result score #head durability_multiplier.data run data get storage durability_multiplier:main head.tag.Damage
execute store result score #chest durability_multiplier.data run data get storage durability_multiplier:main chest.tag.Damage
execute store result score #legs durability_multiplier.data run data get storage durability_multiplier:main legs.tag.Damage
execute store result score #feet durability_multiplier.data run data get storage durability_multiplier:main feet.tag.Damage
execute store result score #mainhand durability_multiplier.data run data get storage durability_multiplier:main mainhand.tag.Damage
execute store result score #offhand durability_multiplier.data run data get storage durability_multiplier:main offhand.tag.Damage

execute store success score #head_valid durability_multiplier.data unless score @s durability_multiplier.head = #head durability_multiplier.data
execute store success score #chest_valid durability_multiplier.data unless score @s durability_multiplier.chest = #chest durability_multiplier.data
execute store success score #legs_valid durability_multiplier.data unless score @s durability_multiplier.legs = #legs durability_multiplier.data
execute store success score #feet_valid durability_multiplier.data unless score @s durability_multiplier.feet = #feet durability_multiplier.data
execute store success score #mainhand_valid durability_multiplier.data unless score @s durability_multiplier.mainhand = #mainhand durability_multiplier.data
execute store success score #offhand_valid durability_multiplier.data unless score @s durability_multiplier.offhand = #offhand durability_multiplier.data


##Send Durability Change Signal
function #durability_multiplier:v1/durability_changed


#Reset scores
scoreboard players reset * durability_multiplier.data

data remove storage durability_multiplier:main head
data remove storage durability_multiplier:main chest
data remove storage durability_multiplier:main legs
data remove storage durability_multiplier:main feet
data remove storage durability_multiplier:main mainhand
data remove storage durability_multiplier:main offhand

tag @s remove durability_multiplier.durability_changed
