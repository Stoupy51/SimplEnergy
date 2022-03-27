
schedule clear energy:v1.1/init
schedule clear energy:v1.1/tick

execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches 1 run function energy:v1.1/init
