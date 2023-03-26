
# Update gui depends on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.4 with cobblestone{CustomModelData:2011936,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 1..300 run item replace block ~ ~ ~ container.4 with cobblestone{CustomModelData:2011935,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 301..600 run item replace block ~ ~ ~ container.4 with cobblestone{CustomModelData:2011934,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 601..900 run item replace block ~ ~ ~ container.4 with cobblestone{CustomModelData:2011933,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 901..1199 run item replace block ~ ~ ~ container.4 with cobblestone{CustomModelData:2011932,simplenergy:{texture_item:1b},display:{Name:'""'}}
execute if score @s energy.storage matches 1200.. run item replace block ~ ~ ~ container.4 with cobblestone{CustomModelData:2011931,simplenergy:{texture_item:1b},display:{Name:'""'}}

