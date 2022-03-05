data modify storage smd:core blockApi.id set from block ~ ~ ~ Items[0].tag.smithed.block.id 

data modify storage smd:core blockApi.__data set from block ~ ~ ~
function #smithed:core/events/place_block

execute if block ~ ~ ~ #smithed:core/placeable run function smithed:core/impl/v0_0_1/block/api/place_block/block_unchanged
