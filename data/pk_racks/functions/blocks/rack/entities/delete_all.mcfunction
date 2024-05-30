#> pk_racks:blocks/rack/entities/delete_all
#
# Delete entities of a rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context location of the rack

execute store result score $temp pk.custom_block.component.id run data get storage pk:common temp.rack.id
kill @e[type=#pk_racks:custom_block_components,predicate=pk_racks:scores/custom_block/component_id_match,distance=..2]