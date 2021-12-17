scoreboard players operation Temp SE_Data = @s energy.data

execute as @s[tag=SE_SimpleCable] run scoreboard players add Temp SE_Data 2012300
execute as @s[tag=SE_AdvancedCable] run scoreboard players add Temp SE_Data 2012400
execute as @s[tag=SE_EliteCable] run scoreboard players add Temp SE_Data 2012500

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get Temp SE_Data
