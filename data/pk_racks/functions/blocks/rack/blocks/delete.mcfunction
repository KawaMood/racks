#> pk_racks:blocks/rack/blocks/delete
#
# Remove blocks of a rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context location of the rack

# Remove block
execute unless data storage pk:common temp.rack{wall:1b} run setblock ~ ~ ~ air