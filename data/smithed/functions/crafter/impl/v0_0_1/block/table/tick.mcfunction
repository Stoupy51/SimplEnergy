execute unless block ~ ~ ~ barrel run function smithed:crafter/impl/v0_0_1/block/table/break

execute if block ~ ~ ~ barrel[open=true] run function smithed:crafter/impl/v0_0_1/block/table/open_tick

execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=smd.open] run function smithed:crafter/impl/v0_0_1/block/table/reset

execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:12}