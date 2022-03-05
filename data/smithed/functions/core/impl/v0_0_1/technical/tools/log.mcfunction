#> smithed:core/impl/v0_0_1/technical/tools/log
#> Input: smd:log {level: number, message: string-json, type: 'ERROR' | 'WARNING' | 'INFO'}

execute store result score $temp smd.logLevel run data get storage smd:log level
execute store result score $temp smd.data run time query gametime


scoreboard players operation $seconds smd.data = $temp smd.data
scoreboard players operation $seconds smd.data /= 20 smd.const
scoreboard players operation $seconds smd.data %= 60 smd.const
execute if score $seconds smd.data matches ..9 run data merge storage smd:log {secPrefix:"0"}


scoreboard players operation $minutes smd.data = $temp smd.data
scoreboard players operation $minutes smd.data /= 1200 smd.const
scoreboard players operation $minutes smd.data %= 60 smd.const
execute if score $minutes smd.data matches ..9 run data merge storage smd:log {minPrefix:"0"}

scoreboard players operation $hours smd.data = $temp smd.data
scoreboard players operation $hours smd.data /= 72000 smd.const
scoreboard players operation $hours smd.data %= 24 smd.const
execute if score $hours smd.data matches ..9 run data merge storage smd:log {hourPrefix:"0"}

execute if data storage smd:log {type:'ERROR'} run data merge storage smd:log {typeLetter:"E"}
execute if data storage smd:log {type:'WARNING'} run data merge storage smd:log {typeLetter:"W"}
execute if data storage smd:log {type:'INFO'} run data merge storage smd:log {typeLetter:"I"}


data merge storage smd:log {temp:'[{"text":"["},{"storage":"smd:log","nbt":"hourPrefix"},{"score":{"name": "$hours","objective": "smd.data"}},":",{"storage":"smd:log","nbt":"minPrefix"},{"score":{"name": "$minutes","objective": "smd.data"}},":",{"storage":"smd:log","nbt":"secPrefix"},{"score":{"name": "$seconds","objective": "smd.data"}},"] ",{"nbt":"typeLetter","storage":"smd:log"}, ": ", {"nbt":"message","storage": "smd:log","interpret": true, "color": "white"}]'}

execute as @a if score @s smd.logLevel >= $temp smd.logLevel run tag @s add smd.sendMessage

execute if data storage smd:log {type:'ERROR'} run tellraw @a[tag=smd.sendMessage] {"nbt":"temp","storage": "smd:log","interpret": true, "color": "red"}
execute if data storage smd:log {type:'WARNING'} run tellraw @a[tag=smd.sendMessage] {"nbt":"temp","storage": "smd:log","interpret": true, "color": "yellow"}
execute if data storage smd:log {type:'INFO'} run tellraw @a[tag=smd.sendMessage] {"nbt":"temp","storage": "smd:log","interpret": true, "color": "white"}
tag @a remove smd.sendMessage

data merge storage smd:log {level:1, message:'', type:'INFO'}
data remove storage smd:log secPrefix
data remove storage smd:log minPrefix
data remove storage smd:log hourPrefix
data remove storage smd:log temp
data remove storage smd:log typeLetter