#> pk_racks:_main/uninstall/feature/single/rack

data modify storage pk:common temp.rack set from storage pk:common uninstall.feature_single

# Remove blocks and entities
function pk_racks:blocks/rack/entities/delete_all
function pk_racks:blocks/rack/blocks/delete

# Stop process if the rack doesn't contain at least an item
execute unless data storage pk:common temp.rack.items[].id run return 1

# Store items into chest
setblock ~ ~ ~ chest
execute if data storage pk:common temp.rack.items[0].id run data modify block ~ ~ ~ Items append from storage pk:common temp.rack.items[0]
execute if data storage pk:common temp.rack.items[1].id run data modify storage pk:common temp.rack.items[1].Slot set value 1b
execute if data storage pk:common temp.rack.items[1].id run data modify block ~ ~ ~ Items append from storage pk:common temp.rack.items[1]