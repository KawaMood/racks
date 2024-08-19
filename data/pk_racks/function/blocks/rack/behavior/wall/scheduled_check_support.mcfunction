#> pk_racks:blocks/rack/behavior/wall/scheduled_check_support
#
# Check if wall racks still have their support
# This function only run if the setting "ignore wall rack support" is set on false

execute as @e[type=marker,tag=pk.racks.block.rack.controller,tag=pk.racks.block.rack.type.wall,predicate=!pk_racks:blocks/rack/wall_has_support] at @s run function pk_racks:blocks/rack/actions/break/from_controller
execute unless score $pk.racks.settings.ignore_wall_rack_support pk.value matches 1.. run schedule function pk_racks:blocks/rack/behavior/wall/scheduled_check_support 10t replace