#> pk_racks:blocks/rack/use/wall/change_item/update_item
#@context a temporary armor_stand, at user

# Prepare data
data remove storage pk.common:data Temp.ItemDisplay
data modify storage pk.common:data Temp.ItemDisplay set value {transformation:{scale:[1f,1f,1f]}}
data modify storage pk.common:data Temp.ItemDisplay.item set from storage pk.common:data Temp.Player.SelectedItem
data modify entity @s HandItems[0] set from storage pk.common:data Temp.Player.SelectedItem

execute if score $item_rotation pk.temp matches 0 run function pk_racks:blocks/rack/use/wall/update_item/rotation_0
execute if score $item_rotation pk.temp matches 1 run function pk_racks:blocks/rack/use/wall/update_item/rotation_1

# Remove the temporary armor_stand
kill @s