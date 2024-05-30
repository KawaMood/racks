#> pk_racks:blocks/rack/use/wall/change_item_rotation/update_item
#@context a temporary armor_stand, at user

# Prepare data
data modify storage pk.common:data Temp.ItemDisplay set value {transformation:{scale:[1f,1f,1f]}}
data modify storage pk.common:data Temp.ItemDisplay.item set from storage pk.common:data Temp.Rack.Items[0]
data modify entity @s HandItems[0] set from storage pk.common:data Temp.Rack.Items[0]

execute if score $item_rotation pk.temp matches 0 run function pk_racks:blocks/rack/use/wall/update_item/rotation_0
execute if score $item_rotation pk.temp matches 1 run function pk_racks:blocks/rack/use/wall/update_item/rotation_1

# Remove the temporary armor_stand
kill @s