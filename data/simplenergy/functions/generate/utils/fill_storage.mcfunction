
scoreboard players set #x.random simplenergy.data 0
execute if predicate simplenergy:chance/0.5 run scoreboard players add #x.random simplenergy.data 1
execute if predicate simplenergy:chance/0.5 run scoreboard players add #x.random simplenergy.data 2
execute if predicate simplenergy:chance/0.5 run scoreboard players add #x.random simplenergy.data 4
execute if predicate simplenergy:chance/0.5 run scoreboard players add #x.random simplenergy.data 8
execute if predicate simplenergy:chance/0.5 run scoreboard players add #x.random simplenergy.data 16
execute if predicate simplenergy:chance/0.5 run scoreboard players add #x.random simplenergy.data 32
execute if predicate simplenergy:chance/0.5 run scoreboard players operation #x.random simplenergy.data *= #-1 simplenergy.data
scoreboard players operation #x.random simplenergy.data *= #seed simplenergy.data

scoreboard players set #y simplenergy.data 0
execute if predicate simplenergy:chance/0.5 run scoreboard players add #y simplenergy.data 1
execute if predicate simplenergy:chance/0.5 run scoreboard players add #y simplenergy.data 2
execute if predicate simplenergy:chance/0.5 run scoreboard players add #y simplenergy.data 4
execute if predicate simplenergy:chance/0.5 run scoreboard players add #y simplenergy.data 8
execute if predicate simplenergy:chance/0.5 run scoreboard players add #y simplenergy.data 16
execute if predicate simplenergy:chance/0.5 run scoreboard players add #y simplenergy.data 32
execute if predicate simplenergy:chance/0.5 run scoreboard players operation #y simplenergy.data *= #-1 simplenergy.data
scoreboard players operation #y simplenergy.data *= #seed simplenergy.data

scoreboard players set #z.random simplenergy.data 0
execute if predicate simplenergy:chance/0.5 run scoreboard players add #z.random simplenergy.data 1
execute if predicate simplenergy:chance/0.5 run scoreboard players add #z.random simplenergy.data 2
execute if predicate simplenergy:chance/0.5 run scoreboard players add #z.random simplenergy.data 4
execute if predicate simplenergy:chance/0.5 run scoreboard players add #z.random simplenergy.data 8
execute if predicate simplenergy:chance/0.5 run scoreboard players add #z.random simplenergy.data 16
execute if predicate simplenergy:chance/0.5 run scoreboard players add #z.random simplenergy.data 32
execute if predicate simplenergy:chance/0.5 run scoreboard players operation #z.random simplenergy.data *= #-1 simplenergy.data
scoreboard players operation #z.random simplenergy.data *= #seed simplenergy.data
