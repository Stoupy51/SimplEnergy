
tag @s add simplenergy.checked
execute if data entity @s Item.tag.simplenergy.destroy_check align xyz run function simplenergy:destroy/item_check/is_destroy
execute if data entity @s Item.tag.simplenergy.texture_item run kill @s
execute if data entity @s Item.tag.mechanization.gui_item run kill @s
execute if data entity @s Item.tag.Teplus.ui run kill @s

