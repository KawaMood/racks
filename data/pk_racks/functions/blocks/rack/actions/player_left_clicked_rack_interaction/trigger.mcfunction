#> pk_racks:blocks/rack/actions/player_left_clicked_rack_interaction/trigger

# Revoke advancement
advancement revoke @s only pk_racks:interactions/left_clicked_rack_interaction

# Tag the current player
tag @s add pk.temp.current.player

# Search the interaction entity
execute as @e[type=interaction,tag=pk.racks.rack.interaction,distance=..16] if data entity @s attack.player run function pk_racks:blocks/rack/actions/player_left_clicked_rack_interaction/found

# Run the process
function pk_racks:blocks/rack/remove/from_player

# Free the current player
tag @s remove pk.temp.current.player