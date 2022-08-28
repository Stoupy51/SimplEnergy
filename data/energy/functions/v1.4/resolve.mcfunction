
schedule clear energy:v1.4/init
schedule clear energy:v1.4/tick

execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches 4 run function energy:v1.4/init
