#> pk_racks:blocks/rack/use/from_player
# Temp entities are retrieved and marker in the interaction advancement rewarded function
# Player Tag pk.temp.current.player = current user
# Interaction Tag pk.temp.current.interaction = current interaction
#@context as user, at user

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @e[type=interaction,tag=pk.temp.current.interaction,distance=..16,limit=1] pk.custom_block.component.id

# Tag the matching components
tag @e[type=#pk_racks:custom_block/components,tag=pk.racks.rack.component,distance=..18,predicate=pk_racks:scores/custom_block/component_id_matching] add pk.temp.current.component

# Prepare data from user and from controller (storage Temp.Rack is modified on the fly)
data modify storage pk.common:data Temp.Player set from entity @s {}
data modify storage pk.common:data Temp.Rack set from entity @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] data.Rack 

# Set the item_rotation score
execute store result score $item_rotation pk.temp run data get storage pk.common:data Temp.Rack.ItemRotation

# Switch wall or ground
execute if data storage pk.common:data Temp.Rack{Wall:0b} run function pk_racks:blocks/rack/use/ground/switch_events
execute if data storage pk.common:data Temp.Rack{Wall:1b} run function pk_racks:blocks/rack/use/wall/switch_events

# Update block list
function pk_racks:blocks/rack/use/blocks_list/update_start

# Store data to controller (storage Temp.Rack was modified on the fly)
data modify entity @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] data.Rack set from storage pk.common:data Temp.Rack

# Free the matching components
tag @e[type=#pk_racks:custom_block/components,tag=pk.temp.current.component,distance=..18] remove pk.temp.current.component

# Logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " right clicked Rack at ["},{"nbt":"Temp.Rack.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.z","storage":"pk.common:data"},{"text": "]"}]