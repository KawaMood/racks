#> pk_racks:blocks/rack/actions/create/from_placeholder
#
# Place a block from a placeholder placement from a player
#
# @context player who placed the placeholder of the custom block, at the placeholder

# Construct
#   Set args
data modify storage pk:common constructor_args.variant set from block ~ ~ ~ components."minecraft:custom_data".pk_data.variant
execute if block ~ ~ ~ player_wall_head run function pk_racks:blocks/rack/actions/create/set_args_wall
#   Set rack data in: storage pk:common output.rack
function pk_racks:blocks/rack/data/create/_run

# Place
data modify storage pk:common temp.rack set from storage pk:common output.rack
function pk_racks:blocks/rack/actions/place/_run