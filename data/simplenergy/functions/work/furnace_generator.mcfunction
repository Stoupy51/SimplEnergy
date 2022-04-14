#Update the gui to default
	data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011999,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if data block ~ ~ ~ {Items:[{Slot:1b}],BurnTime:0s} run data modify block ~ ~ ~ Items[0].tag.CustomModelData set value 2011975

#Update the gui & produce Energy while working
	execute store result score #burn_time simplenergy.data run data get block ~ ~ ~ BurnTime
	execute if score #burn_time simplenergy.data matches 1.. run data modify block ~ ~ ~ Items[0] set value {Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011975,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score #burn_time simplenergy.data matches 1.. run scoreboard players add @s energy.storage 10
	execute if score #burn_time simplenergy.data matches 1.. run playsound simplenergy:furnace_generator block @a[distance=..10] ~ ~ ~ 0.25
	execute if score @s energy.storage matches 800.. run scoreboard players set @s energy.storage 800

