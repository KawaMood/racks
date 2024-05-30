#> pk_racks:blocks/rack/entities/items/create/wall/_run
#
# Place the items of a ground rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @input storage pk:common temp
#   item_args: entry
#       Args for a single item
#
# @context location of the rack align xyz positioned ~0.5 ~0.5 ~0.5

# Set type
data modify storage pk:common temp.item_args.type set value "wall"

# Place each part
#   left
data modify storage pk:common temp.item_args.part set value "left"
execute summon item_display run function pk_racks:blocks/rack/entities/items/create/initialize_single with storage pk:common temp.item_args