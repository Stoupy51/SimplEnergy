
#find available capacity
scoreboard players operation #energy.max_storage energy.data = @s energy.max_storage
scoreboard players operation #energy.max_storage energy.data -= @s energy.storage

#find power to add
scoreboard players operation #energy.temp energy.data = #energy.in energy.data
execute if score #energy.temp energy.data > #energy.max_storage energy.data run scoreboard players operation #energy.temp energy.data = #energy.max_storage energy.data
execute if score #energy.temp energy.data matches ..-1 run scoreboard players set #energy.temp energy.data 0

#set scores
scoreboard players operation #energy.in energy.data -= #energy.temp energy.data
scoreboard players operation #energy.out energy.data += #energy.temp energy.data
scoreboard players operation @s energy.storage += #energy.temp energy.data
