scoreboard players remove #world_bottom simplenergy.data 1
execute positioned 0 ~-1 0 unless block ~ ~ ~ bedrock if score #world_bottom simplenergy.data matches -1000.. run function simplenergy:utils/world_bottom
