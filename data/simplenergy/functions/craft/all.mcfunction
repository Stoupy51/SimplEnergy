data modify storage simplenergy:items all.Crafting set from block ~ ~ ~ Items
execute store result score Count SimplEnergy_Data if data storage simplenergy:items all.Crafting[{tag:{SimplEnergy_CustomTextureItem:1b,CustomModelData:2011929}}]
execute unless data storage simplenergy:items all.Crafting[{Slot:16b,tag:{SimplEnergy_CustomTextureItem:1b}}] run scoreboard players add Count SimplEnergy_Data 1
execute if score Count SimplEnergy_Data matches ..17 run function simplenergy:craft/gui

data modify storage simplenergy:items all.Crafting set from block ~ ~ ~ Items
#Verifying if craft has been done
	execute as @s[tag=SimplEnergy_WaitingCraft] run function simplenergy:craft/check_craft

tag @s remove SimplEnergy_WaitingCraft
tag @s remove SimplEnergy_FoundCraft
item replace block ~ ~ ~ container.16 with minecraft:cobblestone{CustomModelData:2011929,CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}
scoreboard players set @s SimplEnergy_Data 0
scoreboard players set @s SimplEnergy_Data2 1

#Skip useless checks
	execute as @s[tag=!SimplEnergy_FoundCraft] unless data storage simplenergy:items all.Crafting[{Slot:2b}] unless data storage simplenergy:items all.Crafting[{Slot:3b}] unless data storage simplenergy:items all.Crafting[{Slot:4b}] unless data storage simplenergy:items all.Crafting[{Slot:11b}] unless data storage simplenergy:items all.Crafting[{Slot:12b}] unless data storage simplenergy:items all.Crafting[{Slot:13b}] unless data storage simplenergy:items all.Crafting[{Slot:20b}] unless data storage simplenergy:items all.Crafting[{Slot:21b}] unless data storage simplenergy:items all.Crafting[{Slot:22b}] run function simplenergy:craft/no_craft_found

#Check Crafts with only Vanilla Items
	scoreboard players set Success SimplEnergy_Data 0
	execute as @s[tag=!SimplEnergy_FoundCraft] store success score Success SimplEnergy_Data unless data storage simplenergy:items all.Crafting[{Slot:2b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:3b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:4b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:11b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:12b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:13b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:20b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:21b,tag:{StardustFragment_CustomItem:1b}}] unless data storage simplenergy:items all.Crafting[{Slot:22b,tag:{StardustFragment_CustomItem:1b}}] run function simplenergy:craft/types/all_vanilla

#Check Crafts without only Vanilla Items
	execute as @s[tag=!SimplEnergy_FoundCraft] if score Success SimplEnergy_Data matches 0 run function simplenergy:craft/types/all_non_vanilla

#Check Multiple Crafts
	execute as @s[tag=SimplEnergy_WaitingCraft] run function simplenergy:craft/multiple_craft
