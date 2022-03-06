scoreboard players remove WorldBottom simplenergy.data 1
execute positioned 0 ~-1 0 unless block ~ ~ ~ bedrock if score WorldBottom simplenergy.data matches -1000.. run function simplenergy:world_bottom
