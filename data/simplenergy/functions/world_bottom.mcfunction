scoreboard players remove WorldBottom SE_Data 1
execute positioned 0 ~-1 0 unless block ~ ~ ~ bedrock if score WorldBottom SE_Data matches -1000.. run function simplenergy:world_bottom
