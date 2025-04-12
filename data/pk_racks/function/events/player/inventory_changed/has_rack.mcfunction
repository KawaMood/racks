#> pk_racks:events/player/inventory_changed/has_rack

# Update racks items from lower versions
execute if items entity @s container.* player_head[custom_data~{pk_data:{id:"rack",from:"racks"}},!custom_data~{pk_data:{version:30104s}}] run function pk_racks:items/rack/update/run {version:30104s}

# Revoke advancement at the end so the function isn't indefinitively triggered by the inventory change above
advancement revoke @s only pk_racks:events/inventory_changed/has_rack