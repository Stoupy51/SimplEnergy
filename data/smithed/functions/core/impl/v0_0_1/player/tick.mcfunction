execute if data entity @s Inventory[].tag.smithed.durability run function smithed:core/impl/v0_0_1/item/durability/detect

execute if score @s smd.coas matches 1.. run function smithed:core/impl/v0_0_1/player/coas

execute unless score @s smd.id matches -2147483648..2147483647 run function smithed:core/impl/v0_0_1/player/set_id