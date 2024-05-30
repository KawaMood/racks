#> pk_racks:blocks/rack/remove/block_list/remove
# Remove the current Rack from the pk.racks:data Blocks.Racks storage

data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.Search set from storage pk.racks:data Blocks.Racks
data modify storage pk.common:data Temp.Array.New set value []
function pk_racks:blocks/rack/remove/block_list/remove_recursive

data remove storage pk.racks:data Blocks.Racks
data modify storage pk.racks:data Blocks.Racks set from storage pk.common:data Temp.Array.New