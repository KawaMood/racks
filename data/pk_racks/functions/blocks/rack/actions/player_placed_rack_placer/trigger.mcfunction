#> pk_racks:blocks/rack/actions/player_placed_rack_placer/trigger
# Player placed a {Rack:1b} player head block
#@within advancement pk_racks:interactions/placed_rack

# Revoke advancement
advancement revoke @s only pk_racks:interactions/placed_rack_placer

# Store item data the player used to place the Rack
data remove storage pk.common:data Temp.Item
data modify storage pk.common:data Temp.Item set from entity @s SelectedItem

# Search the placed rack
tag @s add pk.temp.current.player
function pk_racks:blocks/rack/actions/player_placed_rack_placer/search_block/start
tag @s remove pk.temp.current.player