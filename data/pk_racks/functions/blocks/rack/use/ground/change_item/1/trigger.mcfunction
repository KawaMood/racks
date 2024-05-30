#> pk_racks:blocks/rack/use/ground/change_item/1/trigger
#@context as user, at user

scoreboard players set $stop.switch_parts pk.temp 0

# If the player is holding a valid item and the interacted part has no item: set
execute if entity @s[predicate=pk_racks:hold/ground_rack_placeable] unless data storage pk.common:data Temp.Rack.Items[0].id run function pk_racks:blocks/rack/use/ground/change_item/1/set

# If the player isn't holding an item and the interacted part of the rack has an item: take
execute if score $stop.switch_parts pk.temp matches 0 unless data entity @s SelectedItem.id if data storage pk.common:data Temp.Rack.Items[0].id run function pk_racks:blocks/rack/use/ground/change_item/1/take

# If the player is holding a valid item and the interacted part of the rack has an item: swap
execute if score $stop.switch_parts pk.temp matches 0 if entity @s[predicate=pk_racks:hold/ground_rack_placeable] if data storage pk.common:data Temp.Rack.Items[0].id run function pk_racks:blocks/rack/use/ground/change_item/1/swap