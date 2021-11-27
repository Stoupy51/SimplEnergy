data modify storage simplenergy:items Crafting set from block ~ ~ ~ Items
execute store result score Count SE_Data if data storage simplenergy:items Crafting[{tag:{SE_CustomTextureItem:1b,CustomModelData:2011929}}]
execute unless data storage simplenergy:items Crafting[{Slot:16b,tag:{SE_CustomTextureItem:1b}}] run scoreboard players add Count SE_Data 1
execute if score Count SE_Data matches ..17 run function simplenergy:craft/gui

data modify storage simplenergy:items Crafting set from block ~ ~ ~ Items
#Verifying if craft has been done
	execute as @s[tag=SE_WaitingCraft] run function simplenergy:craft/check_craft

tag @s remove SE_WaitingCraft
tag @s remove SE_FoundCraft
item replace block ~ ~ ~ container.16 with minecraft:cobblestone{CustomModelData:2011929,CustomItem:1b,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}
scoreboard players set @s SE_Data 0
scoreboard players set @s SE_Data2 1

#Skip useless checks
	execute as @s[tag=!SE_FoundCraft] unless data storage simplenergy:items Crafting[{Slot:2b}] unless data storage simplenergy:items Crafting[{Slot:3b}] unless data storage simplenergy:items Crafting[{Slot:4b}] unless data storage simplenergy:items Crafting[{Slot:11b}] unless data storage simplenergy:items Crafting[{Slot:12b}] unless data storage simplenergy:items Crafting[{Slot:13b}] unless data storage simplenergy:items Crafting[{Slot:20b}] unless data storage simplenergy:items Crafting[{Slot:21b}] unless data storage simplenergy:items Crafting[{Slot:22b}] run function simplenergy:craft/no_craft_found

#Check Crafts with only Vanilla Items
	scoreboard players set Success SE_Data 0
	execute as @s[tag=!SE_FoundCraft] store success score Success SE_Data unless data storage simplenergy:items Crafting[{Slot:2b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:3b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:4b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:11b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:12b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:13b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:20b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:21b,tag:{CustomItem:1b}}] unless data storage simplenergy:items Crafting[{Slot:22b,tag:{CustomItem:1b}}] run function simplenergy:craft/types/all_vanilla

#Check Crafts without only Vanilla Items
	execute as @s[tag=!SE_FoundCraft] if score Success SE_Data matches 0 run function simplenergy:craft/types/all_non_vanilla

#Check Multiple Crafts
	execute as @s[tag=SE_WaitingCraft] run function simplenergy:craft/multiple_craft
