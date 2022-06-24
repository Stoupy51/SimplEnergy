
#Storing difference between old and new durability in a score
scoreboard players operation #damage durability_multiplier.data = #mainhand durability_multiplier.data
scoreboard players operation #damage durability_multiplier.data -= @s durability_multiplier.mainhand

#Select random number between 0 and #multiplier
summon area_effect_cloud -30000000 14 1610 {Tags:["durability_multiplier.temp"],UUID:[I;2013000,2013000,2013000,2013000]}
execute as 001eb748-001e-b748-001e-b748001eb748 run function durability_multiplier:v1.0/technical/random

#Applying durability modifier
execute if score #random durability_multiplier.data matches ..999 run function durability_multiplier:v1.0/technical/durability_modifier
execute if score #random durability_multiplier.data matches 1000.. run scoreboard players add @s durability_multiplier.mainhand 1
item replace block -30000000 14 1610 container.0 from entity @s weapon.mainhand
scoreboard players operation @s durability_multiplier.mainhand -= #damage durability_multiplier.data
execute store result block -30000000 14 1610 Items[0].tag.Damage int 1 run scoreboard players get @s durability_multiplier.mainhand
item replace entity @s weapon.mainhand from block -30000000 14 1610 container.0

#Disable this slot
scoreboard players reset #mainhand_valid durability_multiplier.data

