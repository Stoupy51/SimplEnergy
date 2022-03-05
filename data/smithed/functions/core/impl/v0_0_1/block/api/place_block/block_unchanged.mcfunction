
execute store success score $temp smd.data run data modify storage smd:core blockApi.__data set from block ~ ~ ~

execute if score $temp smd.data matches 0 run function smithed:core/impl/v0_0_1/block/api/place_block/throw_warning

