#> pk_racks:blocks/rack/data/create/set_location/_run
#
# Set location
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new rack
#
# @writes storage pk:common output
#   rack: Rack
#       New custom block data

# Try to set from args
data modify storage pk:common output.rack.location.x set from storage pk:common constructor_args.location.x
data modify storage pk:common output.rack.location.y set from storage pk:common constructor_args.location.y
data modify storage pk:common output.rack.location.z set from storage pk:common constructor_args.location.z
data modify storage pk:common output.rack.location.dimension set from storage pk:common constructor_args.location.dimension
#   @return 1 if all data are set
execute if data storage pk:common output.rack.location.x if data storage pk:common output.rack.location.y if data storage pk:common output.rack.location.z if data storage pk:common output.rack.location.dimension run return 1

# @continue Try to set from current location context
execute summon marker run function pk_racks:blocks/rack/data/create/set_location/coordinates_from_context
execute if entity @s[type=player] run data modify storage pk:common output.rack.location.dimension set from entity @s Dimension 
#   @return 1 if all data are set
execute if data storage pk:common output.rack.location.dimension run return 1

# @continue Set default dimension
data modify storage pk:common output.rack.location.dimension set value "minecraft:overworld"