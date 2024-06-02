
# Check for furnace rotation
scoreboard players set #is_furnace simplenergy.data 0
execute store success score #is_furnace simplenergy.data if block ~ ~ ~ furnace
execute if score #is_furnace simplenergy.data matches 1 if score #rotation simplenergy.data matches 0 run setblock ~ ~ ~ furnace[facing=north] replace
execute if score #is_furnace simplenergy.data matches 1 if score #rotation simplenergy.data matches 90 run setblock ~ ~ ~ furnace[facing=east] replace
execute if score #is_furnace simplenergy.data matches 1 if score #rotation simplenergy.data matches 180 run setblock ~ ~ ~ furnace[facing=south] replace
execute if score #is_furnace simplenergy.data matches 1 if score #rotation simplenergy.data matches 270 run setblock ~ ~ ~ furnace[facing=west] replace

# Apply data back to furnace
execute if score #is_furnace simplenergy.data matches 1 run data modify block ~ ~ ~ {} merge from storage simplenergy:main Block

