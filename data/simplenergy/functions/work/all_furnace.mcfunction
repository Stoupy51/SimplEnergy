#Choose Type Of Furnace
	data modify storage simplenergy:items Furnace set from block ~ ~ ~
	execute store result score CookTime SE_Data run data get storage simplenergy:items Furnace.CookTime
	execute store result score Temp SE_Data run data get storage simplenergy:items Furnace.Items[{Slot:2b}].tag.CustomModelData
	execute if data storage simplenergy:items Furnace.RecipesUsed."simplenergy:barrel" if score CookTime SE_Data matches ..8 run function simplenergy:work/all_furnace_2
	execute if data storage simplenergy:items Furnace.RecipesUsed."simplenergy:barrel_blast" if score CookTime SE_Data matches ..8 run function simplenergy:work/all_furnace_2

execute store result score @s SE_Data2 run data get storage simplenergy:items Furnace.Items[{Slot:0b}].tag.CustomModelData
execute if data storage simplenergy:items Furnace.Items[{Slot:0b,id:"minecraft:barrel"}] unless data storage simplenergy:items Furnace.Items[{Slot:0b}].tag.SE_Cookable run scoreboard players set CookTime SE_Data 0
execute if score CookTime SE_Data matches 0 store result block ~ ~ ~ CookTime short 1 run scoreboard players get CookTime SE_Data
data modify block ~ ~ ~ Items set from storage simplenergy:items Furnace.Items
execute if block ~ ~ ~ furnace if score CookTime SE_Data matches 199 run data modify block ~ ~-1 ~ TransferCooldown set value 2
execute if block ~ ~ ~ blast_furnace if score CookTime SE_Data matches 99 run data modify block ~ ~-1 ~ TransferCooldown set value 2
