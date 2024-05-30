#> pk_racks:blocks/rack/remove/from_player
# Temp entities are retrieved and marker in the interaction advancement rewarded function
# Player Tag pk.temp.current.player = current user
# Interaction Tag pk.temp.current.interaction = current interaction
#@context as user, at user

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @e[type=interaction,tag=pk.temp.current.interaction,distance=..16,limit=1] pk.custom_block.component.id

# Find the matching controller
tag @e[type=marker,tag=pk.racks.rack.controller,distance=..18,predicate=pk_racks:scores/custom_block/component_id_matching] add pk.temp.current.component

# Trigger removal from controller
execute as @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] at @s run function pk_racks:blocks/rack/remove/from_controller

# Debug logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"text": "Rack has been removed","color": "gray"}]