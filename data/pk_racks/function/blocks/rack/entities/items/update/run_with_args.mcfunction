#> pk_racks:blocks/rack/entities/items/update/run_with_args
#
# Reach the right update function dynamically
#
# @input args
#   rack_type: string
#       "ground" or "wall"
#   rack_part: string
#       "left" or "right"
#   item_type: string
#       Item type

$function pk_racks:blocks/rack/entities/items/update/$(rack_type)/$(rack_part)/$(item_type)