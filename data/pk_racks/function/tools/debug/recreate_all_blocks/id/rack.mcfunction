#> pk_racks:tools/debug/recreate_all_blocks/id/rack
#
# @input storage pk:common debug.recreate
#   block: entry
#       Data of the block to recreate
#
# @context At the block to recreate

data modify storage pk:common temp.rack set from storage pk:common debug.recreate.block
function pk_racks:blocks/rack/actions/delete/_run
function pk_racks:blocks/rack/actions/place/_run