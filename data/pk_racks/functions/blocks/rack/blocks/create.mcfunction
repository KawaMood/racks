#> pk_racks:blocks/rack/blocks/create
#
# Place blocks of a rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context location of the rack

# Place block
execute if data storage pk:common temp.rack{wall:1b} run setblock ~ ~ ~ air
execute unless data storage pk:common temp.rack{wall:1b} run setblock ~ ~ ~ barrier