scoreboard objectives add EF_Versions dummy
scoreboard objectives add SE_Data dummy
scoreboard objectives add SE_Data2 dummy
scoreboard objectives add SE_JoulemeterUse minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set SimplEnergy EF_Versions 1033
scoreboard players set Second SE_Data 0
forceload add 0 0
schedule function simplenergy:world_bottom_start 2s

#Cauldron Generator
data modify storage simplenergy:items 2012000 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012000,BlockEntityTag:{Lock:"SE_Placed"},SE_CauldronGenerator:1s,HideFlags:127,display:{Lore:['[{"text":"[Generate : 20 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer : 500 kJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Cauldron Generator","italic":false,"color":"white"}]'}}}
#Furnace Generator
data modify storage simplenergy:items 2012001 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012001,BlockEntityTag:{Lock:"SE_Placed"},SE_FurnaceGenerator:1s,HideFlags:127,display:{Lore:['[{"text":"[Generate : 10 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer : 800 kJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Furnace Generator","italic":false,"color":"white"}]'}}}
#Solar Panel
data modify storage simplenergy:items 2012003 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012003,BlockEntityTag:{Lock:"SE_Placed"},SE_SolarPanel:1s,HideFlags:127,display:{Lore:['[{"text":"[Generate : 4 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer : 600 kJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Solar Panel","italic":false,"color":"white"}]'}}}
#Simple Crafting Table
data modify storage simplenergy:items 2012004 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012004,BlockEntityTag:{Lock:"SE_Placed"},SE_CraftingTable:1s,HideFlags:127,display:{Name:'[{"text":"Simple Crafting Table","italic":false,"color":"white"}]'}}}
#Simple Wire
data modify storage simplenergy:items 2012300 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{CustomModelData:2012300,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}]}},SE_SimpleWire:1s,HideFlags:127,display:{Lore:['[{"text":"[Transfert : 20 kW]","italic":false,"color":"gray"}]'],Name:'[{"text":"Simple Wire","italic":false,"color":"white"}]'}}}
#Advanced Wire
data modify storage simplenergy:items 2012400 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{CustomModelData:2012400,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}]}},SE_AdvancedWire:1s,HideFlags:127,display:{Lore:['[{"text":"[Transfert : 60 kW]","italic":false,"color":"gray"}]'],Name:'[{"text":"Advanced Wire","italic":false,"color":"aqua"}]'}}}
#Elite Wire
data modify storage simplenergy:items 2012500 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{CustomModelData:2012500,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}},SE_EliteWire:1s,HideFlags:127,display:{Lore:['[{"text":"[Transfert : 180 kW]","italic":false,"color":"gray"}]'],Name:'[{"text":"Elite Wire","italic":false,"color":"red"}]'}}}
#Simple Battery
data modify storage simplenergy:items 2012100 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012100,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:0,CustomModelData:2011992,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]},SE_SimpleBattery:1s,HideFlags:127,display:{Lore:['[{"text":"[Energy Storage : 1.5 MJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Simple Battery","italic":false,"color":"white"}]'}}}
#Advanced Battery
data modify storage simplenergy:items 2012101 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012101,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:0,CustomModelData:2011992,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]},SE_AdvancedBattery:1s,HideFlags:127,display:{Lore:['[{"text":"[Energy Storage : 5 MJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Advanced Battery","italic":false,"color":"aqua"}]'}}}
#Elite Battery
data modify storage simplenergy:items 2012102 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012102,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:0,CustomModelData:2011992,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]},SE_EliteBattery:1s,HideFlags:127,display:{Lore:['[{"text":"[Energy Storage : 20 MJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Elite Battery","italic":false,"color":"red"}]'}}}
#Elite Battery (Creative)
data modify storage simplenergy:items 2012103 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012102,BlockEntityTag:{Lock:"SE_Placed",Items:[{Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{Energy:2147483647,CustomModelData:2011992,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]},SE_EliteBattery:1s,HideFlags:127,Enchantments:[{id:"minecraft:protection",lvl:0}],display:{Lore:['[{"text":"[Energy Storage : 20 MJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Elite Battery (Creative)","italic":false,"color":"red"}]'}}}
#Electric Furnace
data modify storage simplenergy:items 2012200 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012200,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricFurnace:1s,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 10 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer : 800 kJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Electric Furnace","italic":false,"color":"white"}]'}}}
#Electric Smelter
data modify storage simplenergy:items 2012202 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012202,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricSmelter:1s,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 80 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer : 6400 kJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Electric Smelter","italic":false,"color":"white"}]'}}}
#Electric Brewing Stand
data modify storage simplenergy:items 2012204 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012204,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricBrewing:1s,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 20 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer : 1200 kJ]","italic":false,"color":"gray"}]'],Name:'[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]'}}}
#Electric Lamp
data modify storage simplenergy:items 2012205 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012205,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricLamp:1s,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 1 kW]","italic":false,"color":"gray"}]'],Name:'[{"text":"Electric Lamp","italic":false,"color":"white"}]'}}}
#Joulemeter
data modify storage simplenergy:items 2012900 set value {Slot:16b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:2012900,SE_Joulemeter:1s,HideFlags:127,display:{Lore:['[{"text":"Allow you to check","italic":false,"color":"gray"}]','[{"text":"machines energy","italic":false,"color":"gray"}]'],Name:'[{"text":"Joulemeter","italic":false,"color":"yellow"}]'}}}
#Simplunium Ore
data modify storage simplenergy:items 2012899 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{SE_Cookable:1b,CustomModelData:2012899,BlockEntityTag:{Lock:"SE_Placed"},SE_SimpluniumOre:1s,HideFlags:127,display:{Name:'[{"text":"Simplunium Ore","italic":false,"color":"white"}]'}}}
#Simplunium Ingot
data modify storage simplenergy:items 2012898 set value {Slot:16b,id:"minecraft:command_block",Count:1b,tag:{Unbreakable:1b,CustomModelData:2012898,SE_SimpluniumIngot:1s,HideFlags:127,display:{Name:'[{"text":"Simplunium Ingot","italic":false,"color":"white"}]'}}}
#Simplunium Block
data modify storage simplenergy:items 2012897 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012897,BlockEntityTag:{Lock:"SE_Placed"},SE_SimpluniumBlock:1s,HideFlags:127,display:{Name:'[{"text":"Simplunium Block","italic":false,"color":"white"}]'}}}
#SimplEnergy Manual
data modify storage simplenergy:items 2012896 set value {Slot:18b,id:"minecraft:written_book",Count:1b,tag:{CustomModelData:2012896,SE_CustomTextureItem:1s,pages:['[{"text":"\\uec02\\n\\n\\n\\uec01","color":"white"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":[{"text":"Cauldron Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":[{"text":"Furnace Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":[{"text":"Solar Panel","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":5},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":6},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Battery","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":[{"text":"Cauldron Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":[{"text":"Furnace Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":[{"text":"Solar Panel","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":5},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":6},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Battery","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":7},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":8},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Furnace","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":9},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Smelter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":10},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":11},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Lamp","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":7},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":8},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Furnace","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":9},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Smelter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":10},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":11},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Lamp","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":12},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":13},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":14},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":15},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Block","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":16},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":12},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":13},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":14},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":15},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Block","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":16},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":12},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":13},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":14},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Wire","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":15},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Block","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":16},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":17},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Ore","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":18},"hoverEvent":{"action":"show_text","contents":[{"text":"Joulemeter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":19},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Crafting Table","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset"},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":17},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Ore","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":18},"hoverEvent":{"action":"show_text","contents":[{"text":"Joulemeter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","clickEvent":{"action":"change_page","value":19},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Crafting Table","italic":false,"color":"white"}]}}]','{"text":"\\uec03","color":"white"}','{"text":"\\uec04","color":"white"}','{"text":"\\uec05","color":"white"}','{"text":"\\uec06","color":"white"}','{"text":"\\uec07","color":"white"}','{"text":"\\uec08","color":"white"}','{"text":"\\uec09","color":"white"}','{"text":"\\uec0A","color":"white"}','{"text":"\\uec0B","color":"white"}','{"text":"\\uec0C","color":"white"}','{"text":"\\uec0D","color":"white"}','{"text":"\\uec0E","color":"white"}','{"text":"\\uec0F","color":"white"}','{"text":"\\uec10","color":"white"}','{"text":"\\uec11","color":"white"}','{"text":"\\uec12","color":"white"}','{"text":"\\uec13","color":"white"}','{"text":"\\uec14","color":"white"}'],title:"SimplEnergy Manual",author:""}}

schedule function simplenergy:post_load 2s replace
