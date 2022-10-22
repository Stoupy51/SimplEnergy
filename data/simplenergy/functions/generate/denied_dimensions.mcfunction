
##Called by function tag #simplenergy:generate_denied_dimensions
##Here is an example to disable generation in a dimension:
##execute if score #authorized simplenergy.data matches 1 if predicate simplenergy:in_dim/overworld run scoreboard players set #authorized simplenergy.data 0
##Another example:
##execute if score #authorized simplenergy.data matches 1 if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set #authorized simplenergy.data 0
##WARNING! This will disable the generation for all data packs using SimplEnergy's Ore Generation System!

