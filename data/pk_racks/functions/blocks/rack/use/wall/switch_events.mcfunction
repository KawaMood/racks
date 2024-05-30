#> pk_racks:blocks/rack/use/wall/switch_events
#@context as user, at user

# If sneaking and rack contains an item: rotate item display
execute if entity @s[predicate=pk_racks:flags/is_sneaking] if data storage pk.common:data Temp.Rack.Items[{}].id run function pk_racks:blocks/rack/use/wall/change_item_rotation/trigger
# Otherwise, change items
execute unless entity @s[predicate=pk_racks:flags/is_sneaking] run function pk_racks:blocks/rack/use/wall/change_item/trigger