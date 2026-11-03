
#> simplenergy:custom_blocks/pulverizer/work
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/tick
#

# Monitor if any slot is working, the recipe being searched again for each pulverizer
data remove storage simplenergy:temp previous_ingredient
execute if entity @s[tag=simplenergy.pulverizer_unlocked_0] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":0,"slot":9,"result":18}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_1] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":1,"slot":10,"result":19}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_2] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":2,"slot":11,"result":20}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_3] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":3,"slot":12,"result":21}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_4] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":4,"slot":13,"result":22}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_5] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":5,"slot":14,"result":23}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_6] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":6,"slot":15,"result":24}
execute if entity @s[tag=simplenergy.pulverizer_unlocked_7] run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":7,"slot":16,"result":25}

# Consume energy if any slot is working
execute if score #working simplenergy.data matches 1.. run scoreboard players set #20 simplenergy.data 20
execute if score #working simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data = @s simplenergy.energy_rate
execute if score #working simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data /= #20 simplenergy.data
execute if score #working simplenergy.data matches 1.. run scoreboard players operation @s energy.storage -= #energy_rate simplenergy.data

