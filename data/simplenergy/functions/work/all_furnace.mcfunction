#Choose Type Of Furnace
	data modify storage simplenergy:items all.Furnace set from block ~ ~ ~
	execute store result score CookTime simplenergy.data run data get storage simplenergy:items all.Furnace.CookTime
	execute store result score Temp simplenergy.data run data get storage simplenergy:items all.Furnace.Items[{Slot:2b}].tag.CustomModelData
	execute if data storage simplenergy:items all.Furnace.RecipesUsed."simplenergy:barrel" if score CookTime simplenergy.data matches ..8 run function simplenergy:work/all_furnace_2
	execute if data storage simplenergy:items all.Furnace.RecipesUsed."simplenergy:barrel_blast" if score CookTime simplenergy.data matches ..8 run function simplenergy:work/all_furnace_2
	execute if data storage simplenergy:items all.Furnace.RecipesUsed."simplenergy:command_block" if score CookTime simplenergy.data matches ..8 run function simplenergy:work/all_furnace_2
	execute if data storage simplenergy:items all.Furnace.RecipesUsed."simplenergy:command_block_blast" if score CookTime simplenergy.data matches ..8 run function simplenergy:work/all_furnace_2

execute store result score @s simplenergy.data_2 run data get storage simplenergy:items all.Furnace.Items[{Slot:0b}].tag.CustomModelData
execute if data storage simplenergy:items all.Furnace.Items[{Slot:0b,id:"minecraft:barrel"}] unless data storage simplenergy:items all.Furnace.Items[{Slot:0b}].tag.ctc.traits."cookable" run scoreboard players set CookTime simplenergy.data 0
execute if data storage simplenergy:items all.Furnace.Items[{Slot:0b,id:"minecraft:command_block"}] unless data storage simplenergy:items all.Furnace.Items[{Slot:0b}].tag.ctc.traits."cookable" run scoreboard players set CookTime simplenergy.data 0
execute if score CookTime simplenergy.data matches 0 store result block ~ ~ ~ CookTime short 1 run scoreboard players get CookTime simplenergy.data
data modify block ~ ~ ~ Items set from storage simplenergy:items all.Furnace.Items
execute if block ~ ~ ~ furnace if score CookTime simplenergy.data matches 199 run data modify block ~ ~-1 ~ TransferCooldown set value 2
execute if block ~ ~ ~ blast_furnace if score CookTime simplenergy.data matches 99 run data modify block ~ ~-1 ~ TransferCooldown set value 2
execute if score CookTime simplenergy.data matches 199 run scoreboard players set @s simplenergy.craft_count 0
