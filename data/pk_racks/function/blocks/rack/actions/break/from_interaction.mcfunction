#> pk_racks:blocks/rack/actions/break/from_interaction
#
# Search the current rack's controller to continue the breaking process from it
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id
execute as @e[type=marker,tag=pk.racks.block.rack.controller,predicate=pk_racks:scores/custom_block/component_id_match,distance=..2] at @s run function pk_racks:blocks/rack/actions/break/from_controller