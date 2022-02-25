execute store result score GameVersion load.status run data get entity @r DataVersion

execute unless score GameVersion load.status matches 2974.. run tellraw @a {"text":"SimplEnergy Error: You need at least Minecraft 1.18.2+.","italic":false,"color":"red"}
execute if score GameVersion load.status matches 2974.. run tellraw @a[tag=convention.debug] {"text":"[Loaded SimplEnergy v1.7.2]","italic":false,"color":"green"}

execute unless entity @a run schedule function simplenergy:post_load 1t replace
