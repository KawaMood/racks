#> pk_racks:blocks/rack/data/create/set_id
#
# Set id
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new rack
#
# @writes storage pk:common output
#   rack: Rack
#       New custom block data

# Try to set from constructor args
data modify storage pk:common output.rack.id set from storage pk:common constructor_args.id
#   @return 1 if id has been correctly set
execute if data storage pk:common output.rack.id run return 1

# @continue Set id from next id
scoreboard players add $next pk.custom_block.component.id 1
execute store result storage pk:common output.rack.id int 1 run scoreboard players get $next pk.custom_block.component.id