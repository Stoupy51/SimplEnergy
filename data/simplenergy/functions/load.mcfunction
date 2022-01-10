scoreboard objectives add load.status dummy
scoreboard objectives add SimplEnergy_Data dummy
scoreboard objectives add SimplEnergy_Data2 dummy
scoreboard objectives add SimplEnergy_CraftCount dummy
scoreboard objectives add SimplEnergy_MultimeterUse minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set SimplEnergy load.status 1060
scoreboard players set #queue_process energy.data 1
scoreboard players set Second SimplEnergy_Data 0

scoreboard players set 400 SimplEnergy_Data 400
scoreboard players set 260 SimplEnergy_Data 260
scoreboard players set 100 SimplEnergy_Data 100
scoreboard players set 80 SimplEnergy_Data 80
scoreboard players set 64 SimplEnergy_Data 64
scoreboard players set 10 SimplEnergy_Data 10
scoreboard players set 4 SimplEnergy_Data 4

scoreboard players set -10 SimplEnergy_Data -10
scoreboard players set -1 SimplEnergy_Data -1

forceload add 0 0
# Check region
execute unless score ForceLoaded SimplEnergy_Data matches 1 run summon marker 0 -64 0 {Tags:["SimplEnergy_Forceload","global.forceload"]}
scoreboard players set ForceLoaded SimplEnergy_Data 1

schedule function simplenergy:world_bottom_start 2s
#define storage simplenergy:items

#Cauldron Generator
	data modify storage simplenergy:items all.2012000 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"cauldron_generator",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012000,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CauldronGenerator:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate: 20 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 500 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Cauldron Generator","italic":false,"color":"white"}]'}}}
#Furnace Generator
	data modify storage simplenergy:items all.2012001 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"furnace_generator",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012001,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_FurnaceGenerator:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate: 10 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 800 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Furnace Generator","italic":false,"color":"white"}]'}}}
#Solar Panel
	data modify storage simplenergy:items all.2012003 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"solar_panel",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012003,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SolarPanel:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate: 4 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 600 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Solar Panel","italic":false,"color":"white"}]'}}}
#Simple Crafting Table
	data modify storage simplenergy:items all.2012004 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"simple_crafting_table",from:"stoupy:simplenergy",traits:{"block":1b}},CustomModelData:2012004,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CraftingTable:1b,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Simple Crafting Table","italic":false,"color":"white"}]'}}}
#Simple Battery
	data modify storage simplenergy:items all.2012100 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"simple_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012100,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SimpleBattery:1b,energy:{storage:0,max_storage:10000},HideFlags:127,display:{Lore:['[{"text":"[Energy Storage: 10 MJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Simple Battery","italic":false,"color":"white"}]'}}}
#Advanced Battery
	data modify storage simplenergy:items all.2012101 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"advanced_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012101,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_AdvancedBattery:1b,energy:{storage:0,max_storage:25000},HideFlags:127,display:{Lore:['[{"text":"[Energy Storage: 25 MJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Advanced Battery","italic":false,"color":"aqua"}]'}}}
#Elite Battery
	data modify storage simplenergy:items all.2012102 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"elite_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012102,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_EliteBattery:1b,energy:{storage:0,max_storage:50000},HideFlags:127,display:{Lore:['[{"text":"[Energy Storage: 50 MJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Elite Battery","italic":false,"color":"red"}]'}}}
#Elite Battery (Creative)
	data modify storage simplenergy:items all.2012103 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"elite_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012102,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_EliteBattery:1b,energy:{storage:2147483647,max_storage:2147483647},HideFlags:127,Enchantments:[{id:"minecraft:protection",lvl:0}],display:{Lore:['[{"text":"[Energy Storage: 2147 GJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Elite Battery (Creative)","italic":false,"color":"red"}]'}}}
#Electric Furnace
	data modify storage simplenergy:items all.2012200 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"electric_furnace",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012200,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_ElectricFurnace:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage: 10 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 800 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Electric Furnace","italic":false,"color":"white"}]'}}}
#Electric Smelter
	data modify storage simplenergy:items all.2012202 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"electric_smelter",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012202,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_ElectricSmelter:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage: 80 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 6400 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Electric Smelter","italic":false,"color":"white"}]'}}}
#Electric Brewing Stand
	data modify storage simplenergy:items all.2012204 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"electric_brewing_stand",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012204,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_ElectricBrewing:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage: 20 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 1200 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]'}}}
#Electric Lamp
	data modify storage simplenergy:items all.2012205 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"electric_lamp",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012205,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_ElectricLamp:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage: 1 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Electric Lamp","italic":false,"color":"white"}]'}}}
#Simple Cable
	data modify storage simplenergy:items all.2012300 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{ctc:{id:"simple_cable",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012300,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}]}},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SimpleCable:1b,HideFlags:127,display:{Lore:['[{"text":"[Transfert: 20 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Simple Cable","italic":false,"color":"white"}]'}}}
#Advanced Cable
	data modify storage simplenergy:items all.2012400 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{ctc:{id:"advanced_cable",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012400,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}]}},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_AdvancedCable:1b,HideFlags:127,display:{Lore:['[{"text":"[Transfert: 60 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Advanced Cable","italic":false,"color":"aqua"}]'}}}
#Elite Cable
	data modify storage simplenergy:items all.2012500 set value {Slot:16b,id:"minecraft:player_head",Count:1b,tag:{ctc:{id:"elite_cable",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}},CustomModelData:2012500,SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_EliteCable:1b,HideFlags:127,display:{Lore:['[{"text":"[Transfert: 180 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Elite Cable","italic":false,"color":"red"}]'}}}
#Multimeter
	data modify storage simplenergy:items all.2012900 set value {Slot:16b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{ctc:{id:"multimeter",from:"stoupy:simplenergy",traits:{"tool":1b}},Unbreakable:1b,CustomModelData:2012900,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_Multimeter:1b,HideFlags:127,display:{Lore:['[{"text":"Allow you to analyse machines","italic":false,"color":"gray"}]','[{"text":"to get their energy information","italic":false,"color":"gray"}]','[{"text":"[Hold in offhand for passive use]","italic":false,"color":"white"}]','{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Multimeter","italic":false,"color":"yellow"}]'}}}
#Simplunium Ore
	data modify storage simplenergy:items all.2012899 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"simplunium_ore",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"block":1b,"ore":1b}},SimplEnergy_Cookable:1b,CustomModelData:2012899,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SimpluniumOre:1b,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Simplunium Ore","italic":false,"color":"white"}]'}}}
#Simplunium Ingot
	data modify storage simplenergy:items all.2012898 set value {Slot:16b,id:"minecraft:command_block",Count:1b,tag:{ctc:{id:"simplunium_ingot",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"ingot":1b}},CustomModelData:2012898,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SimpluniumIngot:1b,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Simplunium Ingot","italic":false,"color":"white"}]'}}}
#Simplunium Block
	data modify storage simplenergy:items all.2012897 set value {Slot:16b,id:"minecraft:barrel",Count:1b,tag:{ctc:{id:"simplunium_block",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"block":1b}},CustomModelData:2012897,BlockEntityTag:{Lock:"SimplEnergy_Placed"},CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SimpluniumBlock:1b,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Simplunium Block","italic":false,"color":"white"}]'}}}
#Raw Simplunium
	data modify storage simplenergy:items all.2012896 set value {Slot:16b,id:"minecraft:command_block",Count:1b,tag:{ctc:{id:"raw_simplunium",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"ore":1b}},SimplEnergy_Cookable:1b,CustomModelData:2012896,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_RawSimplunium:1b,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":false}'],Name:'[{"text":"Raw Simplunium","italic":false,"color":"white"}]'}}}
#SimplEnergy Manual
	data modify storage simplenergy:items all.2012895 set value {Slot:18b,id:"minecraft:written_book",Count:1b,tag:{ctc:{id:"simplenergy_manual",from:"stoupy:simplenergy",traits:{}},CustomModelData:2012895,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_SimplEnergyManual:1b,SimplEnergy_CustomTextureItem:1b,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":false}']},pages:['[{"text":"\\uec02\\n\\n\\n\\uec01","color":"white","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":[{"text":"Cauldron Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":[{"text":"Furnace Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":[{"text":"Solar Panel","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":5},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":6},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Battery","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":[{"text":"Cauldron Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":[{"text":"Furnace Generator","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":[{"text":"Solar Panel","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":5},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":6},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Battery","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":7},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":8},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Furnace","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":9},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Smelter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":10},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":11},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Lamp","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":7},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Battery","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":8},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Furnace","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":9},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Smelter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":10},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":11},"hoverEvent":{"action":"show_text","contents":[{"text":"Electric Lamp","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":12},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":13},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":14},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":15},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Block","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":16},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":12},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":13},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":14},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":15},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Block","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":16},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":12},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":13},"hoverEvent":{"action":"show_text","contents":[{"text":"Advanced Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":14},"hoverEvent":{"action":"show_text","contents":[{"text":"Elite Cable","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":15},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Block","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":16},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":17},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Ore","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":18},"hoverEvent":{"action":"show_text","contents":[{"text":"Multimeter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":19},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Crafting Table","italic":false,"color":"white"}]}},{"text":"\\n\\uec01","color":"reset","font":"simplenergy:font"},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":17},"hoverEvent":{"action":"show_text","contents":[{"text":"Simplunium Ore","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":18},"hoverEvent":{"action":"show_text","contents":[{"text":"Multimeter","italic":false,"color":"white"}]}},{"text":"\\uec00","color":"white","font":"simplenergy:font","clickEvent":{"action":"change_page","value":19},"hoverEvent":{"action":"show_text","contents":[{"text":"Simple Crafting Table","italic":false,"color":"white"}]}}]','{"text":"\\uec03","color":"white","font":"simplenergy:font"}','{"text":"\\uec04","color":"white","font":"simplenergy:font"}','{"text":"\\uec05","color":"white","font":"simplenergy:font"}','{"text":"\\uec06","color":"white","font":"simplenergy:font"}','{"text":"\\uec07","color":"white","font":"simplenergy:font"}','{"text":"\\uec08","color":"white","font":"simplenergy:font"}','{"text":"\\uec09","color":"white","font":"simplenergy:font"}','{"text":"\\uec0A","color":"white","font":"simplenergy:font"}','{"text":"\\uec0B","color":"white","font":"simplenergy:font"}','{"text":"\\uec0C","color":"white","font":"simplenergy:font"}','{"text":"\\uec0D","color":"white","font":"simplenergy:font"}','{"text":"\\uec0E","color":"white","font":"simplenergy:font"}','{"text":"\\uec0F","color":"white","font":"simplenergy:font"}','{"text":"\\uec10","color":"white","font":"simplenergy:font"}','{"text":"\\uec11","color":"white","font":"simplenergy:font"}','{"text":"\\uec12","color":"white","font":"simplenergy:font"}','{"text":"\\uec13","color":"white","font":"simplenergy:font"}','{"text":"\\uec14","color":"white","font":"simplenergy:font"}'],title:"SimplEnergy Manual",author:""}}

#Crafting Table Gui
	data modify storage simplenergy:items all.CraftLock set value [{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:5b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:6b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:7b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:8b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:9b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:10b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:14b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:15b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:17b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:19b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:23b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:24b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}},{Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011929,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}]
	data modify storage simplenergy:items all.CraftingTableGui set from storage simplenergy:items all.CraftLock
	data modify storage simplenergy:items all.CraftingTableGui append from storage simplenergy:items all.2012895
	data modify storage simplenergy:items all.CraftingTableGui append value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011930,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
