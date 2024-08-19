#> pk_racks:blocks/rack/data/create/set_owner
#
# Set owner
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new rack
#
# @writes storage pk:common output
#   rack: Rack
#       New custom block data

# Try to set from args
data modify storage pk:common output.rack.owner set from storage pk:common constructor_args.owner
#   @return 1 if the data is set
execute if data storage pk:common output.rack.owner run return 1

# @continue Try to set from current entity context's UUID
execute if entity @s run data modify storage pk:common output.rack.owner set from entity @s UUID
#   @return 1 if the data is set
execute if data storage pk:common output.rack.owner run return 1