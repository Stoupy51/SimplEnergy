
#Storing difference between old and new durability in a score
scoreboard players operation #damage durability_multiplier.data = #legs durability_multiplier.data
scoreboard players operation #damage durability_multiplier.data -= @s durability_multiplier.legs

#Select random number between 0 and #multiplier
summon area_effect_cloud -30000000 14 1610 {Tags:["durability_multiplier.temp"],UUID:[I;2013000,2013000,2013000,2013000]}
execute as 001eb748-001e-b748-001e-b748001eb748 run function durability_multiplier:v1.0/technical/random

#Applying durability modifier
execute if score #random durability_multiplier.data matches ..999 run function durability_multiplier:v1.0/technical/durability_modifier
execute if score #random durability_multiplier.data matches 1000.. run scoreboard players add @s durability_multiplier.legs 1
item replace block -30000000 14 1610 container.0 from entity @s armor.legs
scoreboard players operation @s durability_multiplier.legs -= #damage durability_multiplier.data
execute store result block -30000000 14 1610 Items[0].tag.Damage int 1 run scoreboard players get @s durability_multiplier.legs
item replace entity @s armor.legs from block -30000000 14 1610 container.0

#Disable this slot
scoreboard players reset #legs_valid durability_multiplier.data

