#> pk_racks:events/player/hurt_entity/rack_interaction/from_found_interaction
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Remove the interaction data
data remove entity @s attack

# Switch actions
#   Break
function pk_racks:blocks/rack/actions/break/from_interaction