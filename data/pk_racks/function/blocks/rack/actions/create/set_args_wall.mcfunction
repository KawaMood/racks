#> pk_racks:blocks/rack/actions/create/set_args_wall
#
# Set args for the custom block constructor if the placeholder is a wall player head
#
# @writes storage pk:common constructor_args
#   Args for the custom block constructor 

data modify storage pk:common constructor_args.wall set value 1b

execute if score $facing pk.temp matches 2 run return run data modify storage pk:common constructor_args.facing set value "north"
execute if score $facing pk.temp matches 3 run return run data modify storage pk:common constructor_args.facing set value "south"
execute if score $facing pk.temp matches 4 run return run data modify storage pk:common constructor_args.facing set value "west"
data modify storage pk:common constructor_args.facing set value "east"