
# Work function
execute unless score @s energy.storage matches 800.. if data block ~ ~ ~ Items[{Slot:1b}] run function simplenergy:work/furnace_generator

# Update gui depends on BurnTime
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if data block ~ ~ ~ {BurnTime:0s}
execute if score #success simplenergy.data matches 1 run item replace block ~ ~ ~ container.0 with cobblestone{CustomModelData:2011999,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score #success simplenergy.data matches 0 run item replace block ~ ~ ~ container.0 with cobblestone{CustomModelData:2011975,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score #success simplenergy.data matches 1 run data modify entity @s item.tag.CustomModelData set value 2012301
execute if score #success simplenergy.data matches 0 run data modify entity @s item.tag.CustomModelData set value 2012302

# Small Fix by the way
data modify block ~ ~ ~ CookTimeTotal set value -200s
data modify block ~ ~ ~ CookTime set value 0s

