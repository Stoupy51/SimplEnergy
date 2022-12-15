
scoreboard objectives add simplenergy.data dummy
scoreboard objectives add simplenergy.data_2 dummy
scoreboard objectives add simplenergy.right_click minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set SimplEnergy load.status 1098
scoreboard players set #second simplenergy.data 0

scoreboard players set #1000000000 simplenergy.data 1000000000
scoreboard players set #10000000 simplenergy.data 10000000
scoreboard players set #1000000 simplenergy.data 1000000
scoreboard players set #10000 simplenergy.data 10000
scoreboard players set #1000 simplenergy.data 1000
scoreboard players set #400 simplenergy.data 400
scoreboard players set #260 simplenergy.data 260
scoreboard players set #100 simplenergy.data 100
scoreboard players set #80 simplenergy.data 80
scoreboard players set #64 simplenergy.data 64
scoreboard players set #32 simplenergy.data 32
scoreboard players set #20 simplenergy.data 20
scoreboard players set #10 simplenergy.data 10
scoreboard players set #8 simplenergy.data 8
scoreboard players set #5 simplenergy.data 5
scoreboard players set #4 simplenergy.data 4
scoreboard players set #2 simplenergy.data 2

scoreboard players set #-10 simplenergy.data -10
scoreboard players set #-1 simplenergy.data -1

scoreboard players set #seed simplenergy.data 0
execute store result score #seed simplenergy.data run seed

tag Stoupy51 add convention.debug
gamerule maxCommandChainLength 2147483647

schedule function simplenergy:utils/world_bottom_start 2s

#define storage energy:temp
#define storage simplenergy:main
#define storage simplenergy:temp
#define storage simplenergy:inventory
#define storage simplenergy:manual
#define storage smithed.crafter:main
#define storage smithed.crafter:input
#define storage smithed.custom_block:main
#define storage smithed.damage:main
#define score_holder #success
#define score_holder #energy
#define score_holder #valid
#define score_holder #count
#define score_holder #temp
#define score_holder #pos



#Resources
	#Simplunium Ore
		data modify storage simplenergy:main all.2012000 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"simplunium_ore",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"block":1b,"ore":1b}}					,CustomModelData:2012000,simplenergy:{simplunium_ore:1b}						,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Ore","italic":false,"color":"white"}]'}				,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:simplunium_ore"}}}}]}}}
	#Deepslate Simplunium Ore
		data modify storage simplenergy:main all.2012001 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"deepslate_simplunium_ore",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"block":1b,"ore":1b}}			,CustomModelData:2012001,simplenergy:{deepslate_simplunium_ore:1b}				,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Deepslate Simplunium Ore","italic":false,"color":"white"}]'}	,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:deepslate_simplunium_ore"}}}}]}}}
	#Raw Simplunium Block
		data modify storage simplenergy:main all.2012002 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"raw_simplunium_block",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"block":1b}}						,CustomModelData:2012002,simplenergy:{raw_simplunium_block:1b}					,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Raw Simplunium Block","italic":false,"color":"white"}]'}		,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:raw_simplunium_block"}}}}]}}}
	#Simplunium Block
		data modify storage simplenergy:main all.2012003 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"simplunium_block",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"block":1b}}							,CustomModelData:2012003,simplenergy:{simplunium_block:1b}						,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Block","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:simplunium_block"}}}}]}}}
	#Raw Simplunium
		data modify storage simplenergy:main all.2012004 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"raw_simplunium",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"ore":1b}}								,CustomModelData:2012004,simplenergy:{raw_simplunium:1b}						,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Raw Simplunium","italic":false,"color":"white"}]'}}}
	#Simplunium Ingot
		data modify storage simplenergy:main all.2012005 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"simplunium_ingot",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"ingot":1b}}							,CustomModelData:2012005,simplenergy:{simplunium_ingot:1b}						,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Ingot","italic":false,"color":"white"}]'}}}
	#Simplunium Nugget
		data modify storage simplenergy:main all.2012006 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"simplunium_nugget",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"nugget":1b}}						,CustomModelData:2012006,simplenergy:{simplunium_nugget:1b}						,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Nugget","italic":false,"color":"white"}]'}}}
	#Simplunium Dust
		data modify storage simplenergy:main all.2012007 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"simplunium_dust",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"dust":1b}}							,CustomModelData:2012007,simplenergy:{simplunium_dust:1b}						,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Dust","italic":false,"color":"white"}]'}}}



#Tools/Equipments
	#SimplEnergy Manual
		data modify storage simplenergy:manual Item set value {Slot:18b,id:"minecraft:written_book"				,Count:1b,tag:{ctc:{id:"simplenergy_manual",from:"stoupy:simplenergy",traits:{}}														,CustomModelData:2012100,simplenergy:{simplenergy_manual:1b}					,HideFlags:127,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}']},pages:[],title:"SimplEnergy Manual",author:""}}
		function simplenergy:manual
	#Simplunium Armor/Tools
		data modify storage simplenergy:main all.2012101 set value {Slot:16b,id:"minecraft:leather_helmet"				,Count:1b,tag:{ctc:{id:"simplunium_helmet",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"armor":1b}}							,CustomModelData:2012101,simplenergy:{simplunium:1b,simplunium_helmet:1b}		,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:4,Operation:0,UUID:[I;201301,201301,201301,201302]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"head",Amount:2,Operation:0,UUID:[I;201301,201301,201302,201302]}]						,display:{color:3487029,Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}']	,Name:'[{"text":"Simplunium Helmet","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012102 set value {Slot:16b,id:"minecraft:leather_chestplate"			,Count:1b,tag:{ctc:{id:"simplunium_chestplate",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"armor":1b}}						,CustomModelData:2012102,simplenergy:{simplunium:1b,simplunium_chestplate:1b}	,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:9,Operation:0,UUID:[I;201302,201302,201302,201303]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"chest",Amount:2,Operation:0,UUID:[I;201302,201302,201303,201303]}]						,display:{color:3487029,Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}']	,Name:'[{"text":"Simplunium Chestplate","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012103 set value {Slot:16b,id:"minecraft:leather_leggings"			,Count:1b,tag:{ctc:{id:"simplunium_leggings",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"armor":1b}}						,CustomModelData:2012103,simplenergy:{simplunium:1b,simplunium_leggings:1b}		,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"legs",Amount:7,Operation:0,UUID:[I;201303,201303,201303,201304]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"legs",Amount:2,Operation:0,UUID:[I;201303,201303,201304,201304]}]						,display:{color:3487029,Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}']	,Name:'[{"text":"Simplunium Leggings","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012104 set value {Slot:16b,id:"minecraft:leather_boots"				,Count:1b,tag:{ctc:{id:"simplunium_boots",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"armor":1b}}							,CustomModelData:2012104,simplenergy:{simplunium:1b,simplunium_boots:1b}		,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"feet",Amount:4,Operation:0,UUID:[I;201304,201304,201304,201305]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"feet",Amount:2,Operation:0,UUID:[I;201304,201304,201305,201305]}]						,display:{color:3487029,Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}']	,Name:'[{"text":"Simplunium Boots","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012105 set value {Slot:16b,id:"minecraft:diamond_sword"				,Count:1b,tag:{ctc:{id:"simplunium_sword",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"tool":1b,"tool/weapon":1b}}			,CustomModelData:2012105,simplenergy:{simplunium:1b,simplunium_sword:1b}					 ,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;201305,201305,201305,201305]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2.25,Operation:0,UUID:[I;201305,201305,201305,201306]}]		,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}']					,Name:'[{"text":"Simplunium Sword","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012106 set value {Slot:16b,id:"minecraft:diamond_pickaxe"				,Count:1b,tag:{ctc:{id:"simplunium_pickaxe",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"tool":1b,"tool/mining":1b}}		,CustomModelData:2012106,simplenergy:{simplunium:1b,simplunium_pickaxe:1b}		,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Pickaxe","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012107 set value {Slot:16b,id:"minecraft:diamond_axe"					,Count:1b,tag:{ctc:{id:"simplunium_axe",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"tool":1b,"tool/chopping":1b}}			,CustomModelData:2012107,simplenergy:{simplunium:1b,simplunium_axe:1b}			,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Axe","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012108 set value {Slot:16b,id:"minecraft:diamond_hoe"					,Count:1b,tag:{ctc:{id:"simplunium_hoe",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"tool":1b,"tool/tilling":1b}}			,CustomModelData:2012108,simplenergy:{simplunium:1b,simplunium_hoe:1b}			,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Hoe","italic":false,"color":"white"}]'}}}
		data modify storage simplenergy:main all.2012109 set value {Slot:16b,id:"minecraft:diamond_shovel"				,Count:1b,tag:{ctc:{id:"simplunium_shovel",from:"stoupy:simplenergy",traits:{"metal/simplunium":1b,"tool":1b,"tool/shovelling":1b}}		,CustomModelData:2012109,simplenergy:{simplunium:1b,simplunium_shovel:1b}		,display:{Lore:['{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simplunium Shovel","italic":false,"color":"white"}]'}}}
	#Multimeter
		data modify storage simplenergy:main all.2012110 set value {Slot:16b,id:"minecraft:warped_fungus_on_a_stick"	,Count:1b,tag:{ctc:{id:"multimeter",from:"stoupy:simplenergy",traits:{"tool":1b}},smithed:{noInteract:1b},Unbreakable:1b				,CustomModelData:2012110,simplenergy:{multimeter:1b}							,HideFlags:127,display:{Lore:['[{"text":"Allows you to analyse machines","italic":false,"color":"gray"}]','[{"text":"to get their energy information","italic":false,"color":"gray"}]','[{"text":"[Hold in offhand for passive use]","italic":false,"color":"white"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Multimeter","italic":false,"color":"yellow"}]'}}}
	#Wrench
		data modify storage simplenergy:main all.2012111 set value {Slot:16b,id:"minecraft:warped_fungus_on_a_stick"	,Count:1b,tag:{ctc:{id:"wrench",from:"stoupy:simplenergy",traits:{"tool":1b}},smithed:{noInteract:1b},Unbreakable:1b					,CustomModelData:2012111,simplenergy:{wrench:1b}								,HideFlags:127,display:{Lore:['[{"text":"Provides you the ability to instantly","italic":false,"color":"gray"}]','[{"text":"break cables and rotates machines","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Wrench","italic":false,"color":"yellow"}]'}}}



#Energy
	#Batteries
		#Simple Battery
			data modify storage simplenergy:main all.2012200 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"simple_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}										,CustomModelData:2012200,simplenergy:{simple_battery:1b}						,energy:{storage:0,max_storage:10000},display:{Lore:['[{"text":"[Energy Storage: 10 MJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simple Battery","italic":false,"color":"white"}]'}	,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:simple_battery"}}}}]}}}
		#Advanced Battery
			data modify storage simplenergy:main all.2012201 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"advanced_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}									,CustomModelData:2012201,simplenergy:{advanced_battery:1b}						,energy:{storage:0,max_storage:25000},display:{Lore:['[{"text":"[Energy Storage: 25 MJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Advanced Battery","italic":false,"color":"aqua"}]'}	,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:advanced_battery"}}}}]}}}
		#Elite Battery
			data modify storage simplenergy:main all.2012202 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"elite_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}										,CustomModelData:2012202,simplenergy:{elite_battery:1b}							,energy:{storage:0,max_storage:50000},display:{Lore:['[{"text":"[Energy Storage: 50 MJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Elite Battery","italic":false,"color":"red"}]'}		,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:elite_battery"}}}}]}}}
		#Elite Battery (Creative)
			data modify storage simplenergy:main all.2012203 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"elite_battery",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}										,CustomModelData:2012202,simplenergy:{elite_battery:1b}							,energy:{storage:2000000000,max_storage:2147483647},HideFlags:127,Enchantments:[{id:"minecraft:protection",lvl:0}],display:{Lore:['[{"text":"[Energy Storage: 2147 GJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Elite Battery (Creative)","italic":false,"color":"red"}]'}		,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:elite_battery"}}}}]}}}
	#Generators
		#Cauldron Generator
			data modify storage simplenergy:main all.2012300 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"cauldron_generator",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}									,CustomModelData:2012300,simplenergy:{cauldron_generator:1b}					,display:{Lore:['[{"text":"[Generate: 5 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 500 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Cauldron Generator","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:cauldron_generator"}}}}]}}}
		#Furnace Generator
			data modify storage simplenergy:main all.2012301 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"furnace_generator",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}									,CustomModelData:2012301,simplenergy:{furnace_generator:1b}						,display:{Lore:['[{"text":"[Generate: 10 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 800 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Furnace Generator","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:furnace_generator"}}}}]}}}
		#Solar Panel
			data modify storage simplenergy:main all.2012303 set value {Slot:16b,id:"minecraft:soul_campfire"			,Count:1b,tag:{ctc:{id:"solar_panel",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}											,CustomModelData:2012303,simplenergy:{solar_panel:1b}							,display:{Lore:['[{"text":"[Generate: 4 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 600 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Solar Panel","italic":false,"color":"white"}]'}					,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:solar_panel"}}}}]}}}
	#Consumers
		#Electric Furnace
			data modify storage simplenergy:main all.2012400 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"electric_furnace",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}									,CustomModelData:2012400,simplenergy:{electric_furnace:1b}						,display:{Lore:['[{"text":"[Power Usage: 10 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 800 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Electric Furnace","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:electric_furnace"}}}}]}}}
		#Electric Smelter
			data modify storage simplenergy:main all.2012402 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"electric_smelter",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}									,CustomModelData:2012402,simplenergy:{electric_smelter:1b}						,display:{Lore:['[{"text":"[Power Usage: 80 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 6400 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Electric Smelter","italic":false,"color":"white"}]'}		,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:electric_smelter"}}}}]}}}
		#Electric Brewing Stand
			data modify storage simplenergy:main all.2012404 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"electric_brewing_stand",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}								,CustomModelData:2012404,simplenergy:{electric_brewing_stand:1b}				,display:{Lore:['[{"text":"[Power Usage: 20 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 1200 kJ]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Electric Brewing Stand","italic":false,"color":"white"}]'}	,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:electric_brewing_stand"}}}}]}}}
		#Electric Lamp
			data modify storage simplenergy:main all.2012405 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"electric_lamp",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}										,CustomModelData:2012405,simplenergy:{electric_lamp:1b}							,display:{Lore:['[{"text":"[Power Usage: 1 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Electric Lamp","italic":false,"color":"white"}]'}																					,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"simplenergy",id:"simplenergy:electric_lamp"}}}}]}}}
	#Cables
		#Simple Cable
			data modify storage simplenergy:main all.2012500 set value {Slot:16b,id:"minecraft:player_head"				,Count:1b,tag:{ctc:{id:"simple_cable",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}										,CustomModelData:2012500,simplenergy:{simple_cable:1b}							,display:{Lore:['[{"text":"[Transfer: 20 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Simple Cable","italic":false,"color":"white"}]'},SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}]}}}}
		#Advanced Cable
			data modify storage simplenergy:main all.2012600 set value {Slot:16b,id:"minecraft:player_head"				,Count:1b,tag:{ctc:{id:"advanced_cable",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}										,CustomModelData:2012600,simplenergy:{advanced_cable:1b}						,display:{Lore:['[{"text":"[Transfer: 60 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Advanced Cable","italic":false,"color":"aqua"}]'},SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}]}}}}
		#Elite Cable
			data modify storage simplenergy:main all.2012700 set value {Slot:16b,id:"minecraft:player_head"				,Count:1b,tag:{ctc:{id:"elite_cable",from:"stoupy:simplenergy",traits:{"block":1b,"energy":1b}}											,CustomModelData:2012700,simplenergy:{elite_cable:1b}							,display:{Lore:['[{"text":"[Transfer: 180 kW]","italic":false,"color":"gray"}]','{"translate":"SimplEnergy","color":"blue","italic":true}'],Name:'[{"text":"Elite Cable","italic":false,"color":"red"}]'},SkullOwner:{Id:[I;-709098200,1001541428,-2043264882,-430220135],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}}}}

