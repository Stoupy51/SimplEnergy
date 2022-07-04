
#Storing difference between old and new durability in a score
scoreboard players operation #damage durability_multiplier.data = #legs durability_multiplier.data
scoreboard players operation #damage durability_multiplier.data -= @s durability_multiplier.legs

#Select random number between 0 and #multiplier
summon area_effect_cloud -30000000 14 1610 {Tags:["durability_multiplier.temp"]}
execute as @e[tag=durability_multiplier.temp] run function durability_multiplier:v1.1/technical/random

#Applying durability modifier
function durability_multiplier:v1.1/technical/durability_modifier
item replace block -30000000 14 1610 container.0 from entity @s armor.legs
execute if score #random durability_multiplier.data matches ..999 run scoreboard players operation @s durability_multiplier.legs -= #damage durability_multiplier.data
execute store result block -30000000 14 1610 Items[0].tag.Damage int 1 run scoreboard players get @s durability_multiplier.legs
item replace entity @s armor.legs from block -30000000 14 1610 container.0

#Disable this slot
scoreboard players reset #legs_valid durability_multiplier.data

