
# Avoiding multiple executions of the same load function
execute unless score SimplEnergy load.status matches 1.. run function simplenergy:load/main

