
#Input scores: #xzVariation, #maxHeight

#Define a -/+ value offset randomly with UUID.
#I multiply values by 10 to keep a digit after decimal.
#Init values
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"],Duration:0}
	execute as @e[tag=simplenergy.temp,limit=1] run function simplenergy:generate/utils/fill_storage
	
	execute store result score #x.random simplenergy.data run data get storage simplenergy:main temp[0]
	execute store result score #z.random simplenergy.data run data get storage simplenergy:main temp[2]
	scoreboard players operation #x simplenergy.data = #x.random simplenergy.data
	scoreboard players operation #z simplenergy.data = #z.random simplenergy.data
	execute store result score #y simplenergy.data run data get storage simplenergy:main temp[1]

	data modify storage simplenergy:main temp set from entity @s Pos
	execute store result score #pos_x simplenergy.data run data get storage simplenergy:main temp[0] 10
	execute store result score #pos_z simplenergy.data run data get storage simplenergy:main temp[2] 10

#Edit X & Z Pos : they can take a value between -#xzVariation & +#xzVariation
#Examples for #xzVariation = 400 : -37.4, 14.3, 0.1, ...
	scoreboard players operation #x simplenergy.data %= #xz_variation simplenergy.data
	scoreboard players operation #z simplenergy.data %= #xz_variation simplenergy.data
	execute if score #x.random simplenergy.data matches ..-1 run scoreboard players operation #x simplenergy.data *= #-1 simplenergy.data
	execute if score #z.random simplenergy.data matches ..-1 run scoreboard players operation #z simplenergy.data *= #-1 simplenergy.data
	scoreboard players operation #pos_x simplenergy.data += #x simplenergy.data
	scoreboard players operation #pos_z simplenergy.data += #z simplenergy.data

#Edit Y Pos : Y can take a value between world bottom and "#maxHeight"
	scoreboard players operation #pos_y simplenergy.data = #world_bottom simplenergy.data
	scoreboard players operation #pos_y simplenergy.data *= #10 simplenergy.data
	scoreboard players operation #y_max simplenergy.data = #world_bottom simplenergy.data
	scoreboard players operation #y_max simplenergy.data *= #-10 simplenergy.data
	scoreboard players operation #y_max simplenergy.data += #max_height simplenergy.data
	scoreboard players operation #y simplenergy.data %= #y_max simplenergy.data
	scoreboard players operation #pos_y simplenergy.data += #y simplenergy.data

#Update Position
	execute store result storage simplenergy:main temp[0] double 0.1 run scoreboard players get #pos_x simplenergy.data
	execute store result storage simplenergy:main temp[1] double 0.1 run scoreboard players get #pos_y simplenergy.data
	execute store result storage simplenergy:main temp[2] double 0.1 run scoreboard players get #pos_z simplenergy.data
	data modify entity @s Pos set from storage simplenergy:main temp
