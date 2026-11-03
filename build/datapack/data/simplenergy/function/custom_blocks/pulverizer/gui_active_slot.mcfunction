
#> simplenergy:custom_blocks/pulverizer/gui_active_slot
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/work {"index":0,"slot":9,"result":18}
#			simplenergy:custom_blocks/pulverizer/work {"index":1,"slot":10,"result":19}
#			simplenergy:custom_blocks/pulverizer/work {"index":2,"slot":11,"result":20}
#			simplenergy:custom_blocks/pulverizer/work {"index":3,"slot":12,"result":21}
#			simplenergy:custom_blocks/pulverizer/work {"index":4,"slot":13,"result":22}
#			simplenergy:custom_blocks/pulverizer/work {"index":5,"slot":14,"result":23}
#			simplenergy:custom_blocks/pulverizer/work {"index":6,"slot":15,"result":24}
#			simplenergy:custom_blocks/pulverizer/work {"index":7,"slot":16,"result":25}
#
# @args		index (int)
#			slot (int)
#			result (int)
#

$scoreboard players operation #progression simplenergy.data = @s simplenergy.pulverizer_progress_$(index)

# Isolate ingredient, the container being read at most once per tick, and only when an ingredient is there
$execute unless items block ~ ~ ~ container.$(index) * run return run function simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}
execute unless data storage simplenergy:temp Items run data modify storage simplenergy:temp Items set from block ~ ~ ~ Items
$data modify storage simplenergy:main pulverizer.input set from storage simplenergy:temp Items[{Slot:$(index)b}]

# Search the recipe, unless the previous slot holds the same ingredient and left #found and the output as they are
data modify storage simplenergy:temp ingredient set from storage simplenergy:main pulverizer.input
data remove storage simplenergy:temp ingredient.Slot
data remove storage simplenergy:temp ingredient.count
execute store success score #new_ingredient simplenergy.data run data modify storage simplenergy:temp previous_ingredient set from storage simplenergy:temp ingredient
execute if score #new_ingredient simplenergy.data matches 1 run function simplenergy:custom_blocks/pulverizer/get_pulverizer_recipe

# If no recipe found, stop
$execute if score #found simplenergy.data matches 0 run return run function simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}

# Else, if output do not match current output slot, stop
scoreboard players set #output_occupied simplenergy.data 0
$execute if data storage simplenergy:temp Items[{Slot:$(result)b}] run scoreboard players set #output_occupied simplenergy.data 1
execute if score #output_occupied simplenergy.data matches 1 run scoreboard players set #is_not_same_output simplenergy.data 0
$execute if score #output_occupied simplenergy.data matches 1 run data modify storage simplenergy:temp copy set from storage simplenergy:temp Items[{Slot:$(result)b}]
execute if score #output_occupied simplenergy.data matches 1 store success score #is_not_same_output simplenergy.data run data modify storage simplenergy:temp copy.id set from storage simplenergy:main pulverizer.output.id
execute if score #output_occupied simplenergy.data matches 1 if score #is_not_same_output simplenergy.data matches 0 store success score #is_not_same_output simplenergy.data run data modify storage simplenergy:temp copy.components set from storage simplenergy:main pulverizer.output.components
$execute if score #output_occupied simplenergy.data matches 1 if score #is_not_same_output simplenergy.data matches 1 run return run function simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}

# Calculate the output count
execute store result score #count simplenergy.data run data get storage simplenergy:temp copy.count
execute store result score #to_add simplenergy.data run data get storage simplenergy:main pulverizer.output.count
scoreboard players operation #count simplenergy.data += #to_add simplenergy.data
$execute if score #output_occupied simplenergy.data matches 1 store result score #max_stack_size simplenergy.data run function simplenergy:custom_blocks/pulverizer/get_max_stack_size {"result":$(result)}
$execute if score #output_occupied simplenergy.data matches 1 if score #count simplenergy.data > #max_stack_size simplenergy.data run return run function simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}

# Progress the slot
scoreboard players add #progression simplenergy.data 1
$execute if score #progression simplenergy.data matches ..199 run scoreboard players operation @s simplenergy.pulverizer_progress_$(index) = #progression simplenergy.data
scoreboard players add #working simplenergy.data 1

# Add the item to the result slot if progression is done
execute if score #progression simplenergy.data matches ..199 run return 1
$execute if score #output_occupied simplenergy.data matches 1 store result block ~ ~ ~ Items[{Slot:$(result)b}].count int 1 run scoreboard players get #count simplenergy.data
$execute if score #output_occupied simplenergy.data matches 0 run data modify storage simplenergy:main pulverizer.output.Slot set value $(result)b
execute if score #output_occupied simplenergy.data matches 0 run data modify block ~ ~ ~ Items append from storage simplenergy:main pulverizer.output

# Reset progression and remove 1 count to ingredient
$function simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}
execute store result score #count simplenergy.data run data get storage simplenergy:main pulverizer.input.count
scoreboard players remove #count simplenergy.data 1
$execute if score #count simplenergy.data matches 1.. store result block ~ ~ ~ Items[{Slot:$(index)b}].count int 1 run scoreboard players get #count simplenergy.data
$execute if score #count simplenergy.data matches 0 run data remove block ~ ~ ~ Items[{Slot:$(index)b}]

