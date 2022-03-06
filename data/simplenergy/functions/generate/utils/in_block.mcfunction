
execute if score Temp SimplEnergy_Data matches 0 store result score Temp SimplEnergy_Data if block ~1 ~ ~ #simplenergy:air
execute if score Temp SimplEnergy_Data matches 0 store result score Temp SimplEnergy_Data if block ~ ~1 ~ #simplenergy:air
execute if score Temp SimplEnergy_Data matches 0 store result score Temp SimplEnergy_Data if block ~ ~ ~1 #simplenergy:air
execute if score Temp SimplEnergy_Data matches 0 store result score Temp SimplEnergy_Data if block ~-1 ~ ~ #simplenergy:air
execute if score Temp SimplEnergy_Data matches 0 store result score Temp SimplEnergy_Data if block ~ ~-1 ~ #simplenergy:air
execute if score Temp SimplEnergy_Data matches 0 store result score Temp SimplEnergy_Data if block ~ ~ ~-1 #simplenergy:air
