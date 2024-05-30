#> pk_racks:blocks/rack/data/create/_run
#
# Create rack's data
#
# @input constructor_args: object
#       Information to preserve in the new rack
#
# @output storage pk:common output
#   rack: Rack
#       New custom block data
#
# @writes storage pk:common constructor_args: null

# Initialize data with default values
data modify storage pk:common output.rack set value {variant:"oak",wall:0b,pose:0s,items:[{},{}]}

# Set data
#   wall
data modify storage pk:common output.rack.wall set from storage pk:common constructor_args.wall
#   variant
data modify storage pk:common output.rack.variant set from storage pk:common constructor_args.variant
#   pose
data modify storage pk:common output.rack.pose set from storage pk:common constructor_args.pose
#   items
data modify storage pk:common output.rack.items set from storage pk:common constructor_args.items
#   id
function pk_racks:blocks/rack/data/create/set_id
#   owner (if set to 0b in args, will skip)
execute unless data storage pk:common constructor_args{owner:0b} run function pk_racks:blocks/rack/data/create/set_owner
#   location
function pk_racks:blocks/rack/data/create/set_location/_run
#   facing
function pk_racks:blocks/rack/data/create/set_facing
#   created_at_gametime
execute store result storage pk:common output.rack.created_at_gametime int 1 run time query gametime

# Clear constructor args
data remove storage pk:common constructor_args

# Update database
data modify storage pk:racks database.blocks.racks append from storage pk:common output.rack