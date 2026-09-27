#> pk_racks:blocks/rack/actions/create/from_placer_entity
#
# Place a block from a placer from a player
#
# @context player who placed the placer of the custom block, at the placer

# Cancel process if there is already a rack here
execute if entity @n[type=marker,tag=pk.racks.block.rack.controller,dx=0] run return run function pk_racks:blocks/rack/actions/create/cancel

# Construct
#   Set args
data modify storage pk:common constructor_args.variant set from storage pk:common temp.block_placer_entity.data.variant
execute store result score $facing pk.temp run data get storage pk:common temp.block_placer_entity.Facing
execute if score $facing pk.temp matches 2.. run function pk_racks:blocks/rack/actions/create/set_args_wall
#   Set rack data in: storage pk:common output.rack
function pk_racks:blocks/rack/data/create/_run

# Place
data modify storage pk:common temp.rack set from storage pk:common output.rack
function pk_racks:blocks/rack/actions/place/_run