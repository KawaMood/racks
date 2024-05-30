#> pk_racks:blocks/rack/actions/player_right_clicked_rack_interaction/trigger

# Revoke advancement
advancement revoke @s only pk_racks:interactions/right_clicked_rack_interaction

# Tag the current player
tag @s add pk.temp.current.player

# Search the interaction entity
execute as @e[type=interaction,tag=pk.racks.rack.interaction,distance=..16] if data entity @s interaction.player run function pk_racks:blocks/rack/actions/player_right_clicked_rack_interaction/found

# Run the process
function pk_racks:blocks/rack/use/from_player

# Free the current entities
tag @e[type=interaction,tag=pk.temp.current.interaction,distance=..16,limit=1] remove pk.temp.current.interaction
tag @s remove pk.temp.current.player