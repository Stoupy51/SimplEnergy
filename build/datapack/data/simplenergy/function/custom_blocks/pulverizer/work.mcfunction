
#> simplenergy:custom_blocks/pulverizer/work
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/tick
#

# Monitor if any slot is working
execute unless data storage simplenergy:temp slots[0].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":0,"slot":9,"result":18}
execute unless data storage simplenergy:temp slots[1].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":1,"slot":10,"result":19}
execute unless data storage simplenergy:temp slots[2].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":2,"slot":11,"result":20}
execute unless data storage simplenergy:temp slots[3].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":3,"slot":12,"result":21}
execute unless data storage simplenergy:temp slots[4].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":4,"slot":13,"result":22}
execute unless data storage simplenergy:temp slots[5].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":5,"slot":14,"result":23}
execute unless data storage simplenergy:temp slots[6].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":6,"slot":15,"result":24}
execute unless data storage simplenergy:temp slots[7].blocked run function simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":7,"slot":16,"result":25}

# Consume energy if any slot is working
execute if score #working simplenergy.data matches 1.. run scoreboard players set #20 simplenergy.data 20
execute if score #working simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data = @s simplenergy.energy_rate
execute if score #working simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data /= #20 simplenergy.data
execute if score #working simplenergy.data matches 1.. run scoreboard players operation @s energy.storage -= #energy_rate simplenergy.data

