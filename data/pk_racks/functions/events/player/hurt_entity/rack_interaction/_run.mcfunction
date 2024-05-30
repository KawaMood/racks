#> pk_racks:events/player/hurt_entity/rack_interaction/_run
#
# Rewarded from advancement pk_racks:events/player_hurt_entity/rack_interaction

# Revoke advancement
advancement revoke @s only pk_racks:events/player_hurt_entity/rack_interaction

# Mark the current player
tag @s add pk.current.player

# Retrieve interacted interaction
execute as @e[type=interaction,tag=pk.racks.block.rack.interaction,distance=..65] if data entity @s attack at @s run function pk_racks:events/player/hurt_entity/rack_interaction/from_found_interaction

# Unmark the current player
tag @s remove pk.current.player