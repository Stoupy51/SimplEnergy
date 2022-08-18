
#Tick function
schedule function durability_multiplier:v1.2/tick 1t replace
execute in overworld as @a[tag=durability_multiplier.durability_changed] run function durability_multiplier:v1.2/global_call
