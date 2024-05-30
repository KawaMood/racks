#> pk_racks:blocks/rack/actions/create/set_args_wall
#
# Set args for the custom block constructor if the placeholder is a wall player head
#
# @writes storage pk:common constructor_args
#   Args for the custom block constructor 

data modify storage pk:common constructor_args.wall set value 1b

execute if block ~ ~ ~ player_wall_head[facing=north] run data modify storage pk:common constructor_args.facing set value "north"
execute if block ~ ~ ~ player_wall_head[facing=east] run data modify storage pk:common constructor_args.facing set value "east"
execute if block ~ ~ ~ player_wall_head[facing=south] run data modify storage pk:common constructor_args.facing set value "south"
execute if block ~ ~ ~ player_wall_head[facing=west] run data modify storage pk:common constructor_args.facing set value "west"