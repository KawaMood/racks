#> pk_racks:blocks/rack/data/update
#
# Update a rack in the database
#
# @input pk:common input
#   rack: Rack

data modify storage pk:common package.dynamic_command.args set value {p1:"execute if data storage pk:racks database.blocks.racks[{id:",p2:"}] run data modify storage pk:racks database.blocks.racks[{id:",p3:"}] set from storage pk:common temp.rack"}
data modify storage pk:common package.dynamic_command.args.v1 set from storage pk:common temp.rack.id
data modify storage pk:common package.dynamic_command.args.v2 set from storage pk:common temp.rack.id
function pk_racks:packages/dynamic_command/2_vars with storage pk:common package.dynamic_command.args