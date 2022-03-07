
execute if score output_cmd simplenergy.data matches 2012898 run data modify storage simplenergy:items furnace.Items[{Slot:2b}].tag set from storage simplenergy:items all.2012898.tag
execute if score output_cmd simplenergy.data matches 0000000 run data modify storage simplenergy:items furnace.Items[{Slot:2b}].tag set from storage simplenergy:items all.2012898.tag

#Stop cooking if the furnace output isn't empty
execute unless score output_cmd simplenergy.data matches 0 unless score output_cmd simplenergy.data matches 2012898 run scoreboard players set cook_time simplenergy.data 0
