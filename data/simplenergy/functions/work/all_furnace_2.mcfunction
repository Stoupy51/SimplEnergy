#Simplunium Ore
	execute if score @s SE_Data2 matches 2012899 if score Temp SE_Data matches 2012898 run data modify storage simplenergy:items all.Furnace.Items[{Slot:2b}].tag set from storage simplenergy:items all.2012898.tag
	execute if score @s SE_Data2 matches 2012899 if score Temp SE_Data matches 0 run data modify storage simplenergy:items all.Furnace.Items[{Slot:2b}].tag set from storage simplenergy:items all.2012898.tag
	execute if score @s SE_Data2 matches 2012899 unless score Temp SE_Data matches 0 unless score Temp SE_Data matches 2012898 run scoreboard players set CookTime SE_Data 0

#Raw Simplunium
	execute if score @s SE_Data2 matches 2012896 if score Temp SE_Data matches 2012898 run data modify storage simplenergy:items all.Furnace.Items[{Slot:2b}].tag set from storage simplenergy:items all.2012898.tag
	execute if score @s SE_Data2 matches 2012896 if score Temp SE_Data matches 0 run data modify storage simplenergy:items all.Furnace.Items[{Slot:2b}].tag set from storage simplenergy:items all.2012898.tag
	execute if score @s SE_Data2 matches 2012896 unless score Temp SE_Data matches 0 unless score Temp SE_Data matches 2012898 run scoreboard players set CookTime SE_Data 0
