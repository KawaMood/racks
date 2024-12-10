#> pk_racks:items/rack/update/change/slot/container_recursive

# Update the current item
data modify storage pk:common temp.args.slot set from storage pk:common temp.container[-1].Slot
execute summon armor_stand run function pk_racks:items/rack/update/change/slot/container with storage pk:common temp.args

# Recursive call
data remove storage pk:common temp.container[-1]
execute if data storage pk:common temp.container[{}] run function pk_racks:items/rack/update/change/slot/container_recursive