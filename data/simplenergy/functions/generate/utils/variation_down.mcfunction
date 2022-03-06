
execute if block ~ ~ ~ #simplenergy:air positioned ~ ~-1 ~ if entity @s[distance=..20] run function simplenergy:generate/utils/variation_down
execute store result score Temp SimplEnergy_Data unless block ~ ~ ~ #simplenergy:air run tp @s ~ ~ ~
