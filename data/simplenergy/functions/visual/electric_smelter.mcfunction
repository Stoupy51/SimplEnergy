
# Update gui depends on CookTime
execute store result score #cook_time simplenergy.data run data get block ~ ~ ~ CookTime
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011942,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 1..1600 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011941,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 1601..3200 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011940,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 3201..4800 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011939,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 4801..6399 run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011938,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 6400.. run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011937,simplenergy:{texture_item:1b},display:{Name:'""'}}

# Update block visual depends on CookTime
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.tag.CustomModelData set value 2012402
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute unless score #cook_time simplenergy.data matches 0 run data modify entity @s item.tag.CustomModelData set value 2012403

