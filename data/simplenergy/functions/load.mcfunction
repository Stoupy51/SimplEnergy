scoreboard objectives add SE_Data dummy
scoreboard objectives add SE_SimpleGen dummy
scoreboard objectives add SE_JoulemeterUse minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set Version SE_Data 1022



#Cauldron Generator
data modify storage simplenergy:craft 2012000 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012000,BlockEntityTag:{Lock:"SE_Placed"},SE_CauldronGenerator:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate : 2 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 500 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Cauldron Generator","color":"white","italic":false}]'}}}
#Furnace Generator
data modify storage simplenergy:craft 2012001 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012001,BlockEntityTag:{Lock:"SE_Placed"},SE_FurnaceGenerator:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate : 10 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 800 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Furnace Generator","color":"white","italic":false}]'}}}
#Solar Panel
data modify storage simplenergy:craft 2012003 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012003,BlockEntityTag:{Lock:"SE_Placed"},SE_SolarPanel:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate : 4 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 600 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Solar Panel","color":"white","italic":false}]'}}}
#Simple Wire
data modify storage simplenergy:craft 2012300 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{CustomModelData:2012300,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}]}},SE_SimpleWire:1b,HideFlags:127,display:{Lore:['[{"text":"[Transfert : 20 Watt]","color":"gray","italic":false}]'],Name:'[{"text":"Simple Wire","color":"white","italic":false}]'}}}
#Advanced Wire
data modify storage simplenergy:craft 2012400 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{CustomModelData:2012400,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}]}},SE_AdvancedWire:1b,HideFlags:127,display:{Lore:['[{"text":"[Transfert : 60 Watt]","color":"gray","italic":false}]'],Name:'[{"text":"Advanced Wire","color":"aqua","italic":false}]'}}}
#Elite Wire
data modify storage simplenergy:craft 2012500 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{CustomModelData:2012500,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}},SE_EliteWire:1b,HideFlags:127,display:{Lore:['[{"text":"[Transfert : 180 Watt]","color":"gray","italic":false}]'],Name:'[{"text":"Elite Wire","color":"red","italic":false}]'}}}
#Simple Battery
data modify storage simplenergy:craft 2012100 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012100,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:0,CustomModelData:2011992,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]},SE_SimpleBattery:1b,HideFlags:127,display:{Lore:['[{"text":"[Energy Storage : 1.5 kJ]","color":"gray","italic":false}]'],Name:'[{"text":"Simple Battery","color":"white","italic":false}]'}}}
#Advanced Battery
data modify storage simplenergy:craft 2012101 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012101,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:0,CustomModelData:2011992,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]},SE_AdvancedBattery:1b,HideFlags:127,display:{Lore:['[{"text":"[Energy Storage : 5 kJ]","color":"gray","italic":false}]'],Name:'[{"text":"Advanced Battery","color":"aqua","italic":false}]'}}}
#Elite Battery
data modify storage simplenergy:craft 2012102 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012102,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:0,CustomModelData:2011992,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]},SE_EliteBattery:1b,HideFlags:127,display:{Lore:['[{"text":"[Energy Storage : 20 kJ]","color":"gray","italic":false}]'],Name:'[{"text":"Elite Battery","color":"red","italic":false}]'}}}
#Electric Furnace
data modify storage simplenergy:craft 2012200 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012200,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricFurnace:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 10 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 800 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Electric Furnace","color":"white","italic":false}]'}}}
#Electric Smelter
data modify storage simplenergy:craft 2012202 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012202,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricSmelter:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 80 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 6400 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Electric Smelter","color":"white","italic":false}]'}}}
#Electric Brewing Stand
data modify storage simplenergy:craft 2012204 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012204,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricBrewing:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 20 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 1200 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Electric Brewing Stand","color":"white","italic":false}]'}}}
#Electric Lamp
data modify storage simplenergy:craft 2012205 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012205,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricLamp:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 1 Watt]","color":"gray","italic":false}]'],Name:'[{"text":"Electric Lamp","color":"white","italic":false}]'}}}
#Joulemeter
data modify storage simplenergy:craft 2012900 set value {Slot:16b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:2012900,SE_Joulemeter:1b,HideFlags:127,display:{Lore:['[{"text":"Allow you to check","color":"gray","italic":false}]','[{"text":"machines energy","color":"gray","italic":false}]'],Name:'[{"text":"Joulemeter","color":"yellow","italic":false}]'}}}
#Simplunium Ore
data modify storage simplenergy:craft 2012899 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012899,BlockEntityTag:{Lock:"SE_Placed"},SE_SimpluniumOre:1b,HideFlags:127,display:{Name:'[{"text":"Simplunium Ore","color":"white","italic":false}]'}}}
#Simplunium
data modify storage simplenergy:craft 2012898 set value {Slot:16b,id:"minecraft:command_block",Count:9b,tag:{Unbreakable:1b,CustomModelData:2012898,SE_Simplunium:1b,HideFlags:127,display:{Name:'[{"text":"Simplunium","color":"white","italic":false}]'}}}
#Simplunium Block
data modify storage simplenergy:craft 2012897 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012897,BlockEntityTag:{Lock:"SE_Placed"},SE_SimpluniumBlock:1b,HideFlags:127,display:{Name:'[{"text":"Block of Simplunium","color":"white","italic":false}]'}}}


schedule function simplenergy:post_load 2s replace