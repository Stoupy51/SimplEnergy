
schedule clear energy:v1.2/init
schedule clear energy:v1.2/tick

execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches 2 run function energy:v1.2/init
