
#> simplenergy:custom_blocks/redstone_generator/consume_redstone_block
#
# @within	simplenergy:custom_blocks/redstone_generator/second
#

data modify block ~ ~ ~ lit_time_remaining set value 2520s
execute store result score #count simplenergy.data run data get block ~ ~ ~ Items[{Slot:0b}].count
scoreboard players remove #count simplenergy.data 1
execute if score #count simplenergy.data matches 1.. store result block ~ ~ ~ Items[{Slot:0b}].count int 1 run scoreboard players get #count simplenergy.data
execute if score #count simplenergy.data matches 0 run data remove block ~ ~ ~ Items[{Slot:0b}]

