#> pk_racks:blocks/rack/actions/change_pose/from_target_item_display
#
# @context item display entities that need to update

data modify entity @s start_interpolation set value -1
function pk_racks:blocks/rack/entities/items/update/_run