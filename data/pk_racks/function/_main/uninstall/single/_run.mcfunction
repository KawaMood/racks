#> pk_racks:_main/uninstall/single/_run
#
# @reads pk:common temp
#   rack: Rack
#
# @context A rack controller at @s

# Remove blocks and entities
function pk_racks:blocks/rack/entities/delete_all
function pk_racks:blocks/rack/blocks/delete

# Store items into chest
execute if data storage pk:common temp.rack.items[{}].id run function pk_racks:_main/uninstall/single/turn_into_chest