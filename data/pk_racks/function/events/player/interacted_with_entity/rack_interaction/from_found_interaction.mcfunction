#> pk_racks:events/player/interacted_with_entity/rack_interaction/from_found_interaction
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Remove the interaction data
data remove entity @s interaction

# Switch actions
#   Swap item
execute if score $player.is_sneaking pk.temp matches 0 run function pk_racks:blocks/rack/actions/swap_item/_run
#   Change pose
execute if score $player.is_sneaking pk.temp matches 1.. run function pk_racks:blocks/rack/actions/change_pose/_run