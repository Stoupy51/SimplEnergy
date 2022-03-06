
execute if score Temp simplenergy.data matches 0 store result score Temp simplenergy.data if block ~1 ~ ~ #simplenergy:air
execute if score Temp simplenergy.data matches 0 store result score Temp simplenergy.data if block ~ ~1 ~ #simplenergy:air
execute if score Temp simplenergy.data matches 0 store result score Temp simplenergy.data if block ~ ~ ~1 #simplenergy:air
execute if score Temp simplenergy.data matches 0 store result score Temp simplenergy.data if block ~-1 ~ ~ #simplenergy:air
execute if score Temp simplenergy.data matches 0 store result score Temp simplenergy.data if block ~ ~-1 ~ #simplenergy:air
execute if score Temp simplenergy.data matches 0 store result score Temp simplenergy.data if block ~ ~ ~-1 #simplenergy:air
