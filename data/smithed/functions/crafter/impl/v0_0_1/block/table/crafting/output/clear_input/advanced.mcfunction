execute unless data storage smd:crafter {flags:["consume_buckets"]} if predicate smithed:crafter/block/table/special_clear/buckets store success score $temp smd.data run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/clear_input/advanced/buckets
execute unless data storage smd:crafter {flags:["consume_tools"]} if predicate smithed:crafter/block/table/special_clear/tools unless data entity @s {HandItems:[{tag:{Unbreakable:1b}}]} run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/clear_input/handle_tools

function #smithed:crafter/events/advanced_remove
