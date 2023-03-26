
# Work function
execute if score @s energy.storage matches 10.. if data block ~ ~ ~ Items[{Slot:0b}] run function simplenergy:work/electric_furnace

# Update gui depends on CookTime
execute store result score #cook_time simplenergy.data run data get block ~ ~ ~ CookTime
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011998,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 1..200 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011997,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 201..400 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011996,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 401..600 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011995,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 601..799 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011994,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 800.. run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011993,simplenergy:{texture_item:1b},display:{Name:'""'}}

# Update block visual depends on CookTime
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] Item.tag.CustomModelData set value 2012400
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute unless score #cook_time simplenergy.data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012401

