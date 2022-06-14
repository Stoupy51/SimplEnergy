
#Get and Search machines with same Energy Storage from SimplEnergy
	scoreboard players operation #temp simplenergy.data = @s energy.max_storage
	tag @s add simplenergy.balance
	tag @s add simplenergy.balanced
	scoreboard players set #success simplenergy.data 0
	execute store result score #success simplenergy.data align xyz positioned ~ ~1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
	execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~ ~-1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
	execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~ ~ ~1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
	execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~ ~ ~-1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
	execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
	execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data align xyz positioned ~-1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data
	execute if score #success simplenergy.data matches 1 run function simplenergy:balance/balance

tag @e[tag=simplenergy.balance] remove simplenergy.balance
