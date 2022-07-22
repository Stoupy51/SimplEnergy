
#Storing difference between old and new durability in a score
scoreboard players operation #damage durability_multiplier.data = #mainhand durability_multiplier.data
scoreboard players operation #damage durability_multiplier.data -= @s durability_multiplier.mainhand

#Select random number between 0 and #multiplier
summon marker -30000000 14 1610 {Tags:["durability_multiplier.temp"]}
execute as @e[tag=durability_multiplier.temp] run function durability_multiplier:v1.2/technical/random

#Applying durability modifier
function durability_multiplier:v1.2/technical/durability_modifier
item replace block -30000000 14 1610 container.0 from entity @s weapon.mainhand
execute if score #random durability_multiplier.data matches ..999 run scoreboard players operation @s durability_multiplier.mainhand -= #damage durability_multiplier.data
execute store result block -30000000 14 1610 Items[0].tag.Damage int 1 run scoreboard players get @s durability_multiplier.mainhand
item replace entity @s weapon.mainhand from block -30000000 14 1610 container.0

#Disable this slot
scoreboard players reset #mainhand_valid durability_multiplier.data

