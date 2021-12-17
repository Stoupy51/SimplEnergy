
schedule clear energy:v1.0/init
schedule clear energy:v1.0/tick

execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches 0 run function energy:v1.0/init
