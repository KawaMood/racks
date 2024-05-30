#> pk_racks:blocks/rack/entities/items/create/_run
#
# Place the items of a ground rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @input storage pk:common temp
#   item_args: entry
#       Args for a single items part
#
# @context location of the rack align xyz positioned ~0.5 ~0.5 ~0.5

# Prepare items parts common args
#   y_rotation
data modify storage pk:common temp.item_args.y_rotation set value 0
execute if data storage pk:common temp.rack{facing:"east"} run data modify storage pk:common temp.item_args.y_rotation set value 90
execute if data storage pk:common temp.rack{facing:"south"} run data modify storage pk:common temp.item_args.y_rotation set value 180
execute if data storage pk:common temp.rack{facing:"west"} run data modify storage pk:common temp.item_args.y_rotation set value 270

# Switch process depending on the wall data of the rack
#   Ground
execute unless data storage pk:common temp.rack{wall:1b} align xyz positioned ~0.5 ~0.5 ~0.5 run return run function pk_racks:blocks/rack/entities/items/create/ground/_run
#   @continue Wall
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function pk_racks:blocks/rack/entities/items/create/wall/_run