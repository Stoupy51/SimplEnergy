scoreboard objectives add smd.inv_change dummy

data modify storage smd:crafter flags set value []
schedule function smithed:crafter/impl/v0_0_1/technical/slow_tick 5t replace
