
#Tick function
schedule function durability_multiplier:v1.0/tick 1t replace
execute in minecraft:overworld as @a[tag=durability_multiplier.durability_changed] run function durability_multiplier:v1.0/global_call
