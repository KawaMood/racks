#> pk_racks:events/player/placed_block/rack_placeholder
#
# Rewarded from advancement pk_racks:events/placed_block/rack_placeholder

# Revoke advancement
advancement revoke @s only pk_racks:events/placed_block/rack_placeholder

# Mark the current player
tag @s add pk.current.player

# Store item data the player used to place the Waystone and tell the process it has been placed by a player
data modify storage pk:common temp.item set from entity @s SelectedItem

# Search the placed block
data modify storage pk:common package.search_block.args set value {distance:10,block:"#pk_racks:player_heads",nbt:{components:{"minecraft:custom_data":{pk_data:{custom_block:1b,id:"rack",from:"racks"}}}},callback:"function pk_racks:blocks/rack/actions/create/from_placeholder",stop_at_first:true}
function pk_racks:packages/search_block/start with storage pk:common package.search_block.args

# Unmark the current player
tag @s remove pk.current.player