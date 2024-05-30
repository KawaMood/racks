#> pk_racks:blocks/rack/actions/player_placed_rack_placer/search_block/found
# Block has been found

scoreboard players set $found pk.temp 1

# Store the block data
data modify storage pk.common:data Temp.Block set from block ~ ~ ~

# Place
function pk_racks:blocks/rack/place/trigger