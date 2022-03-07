
execute if score temp simplenergy.data matches 0 store result score temp simplenergy.data if block ~1 ~ ~ #simplenergy:air
execute if score temp simplenergy.data matches 0 store result score temp simplenergy.data if block ~ ~1 ~ #simplenergy:air
execute if score temp simplenergy.data matches 0 store result score temp simplenergy.data if block ~ ~ ~1 #simplenergy:air
execute if score temp simplenergy.data matches 0 store result score temp simplenergy.data if block ~-1 ~ ~ #simplenergy:air
execute if score temp simplenergy.data matches 0 store result score temp simplenergy.data if block ~ ~-1 ~ #simplenergy:air
execute if score temp simplenergy.data matches 0 store result score temp simplenergy.data if block ~ ~ ~-1 #simplenergy:air
