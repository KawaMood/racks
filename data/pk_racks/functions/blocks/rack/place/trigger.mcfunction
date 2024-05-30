#> pk_racks:blocks/rack/place/trigger
# Place a rack and store its relative information in the blocks list

# Scores
# - Increment the component id score
scoreboard players add $next pk.custom_block.component.id 1
# - Check if the rack has been placed on a wall
execute if block ~ ~ ~ player_wall_head run scoreboard players set $wall pk.temp 1
execute unless block ~ ~ ~ player_wall_head run scoreboard players set $wall pk.temp 0
# - Check what direction the block is facing
function pk_racks:blocks/rack/place/score_set_facing_direction

# Prepare data of the rack and store the rack in the blocks list
function pk_racks:blocks/rack/place/blocks_list/store

# Set useful scores before switching for the right block placement
execute if data storage pk.common:data Temp.Rack{Type:"oak"} run scoreboard players set $type pk.temp 0
execute if data storage pk.common:data Temp.Rack{Type:"birch"} run scoreboard players set $type pk.temp 1
execute if data storage pk.common:data Temp.Rack{Type:"spruce"} run scoreboard players set $type pk.temp 2
execute if data storage pk.common:data Temp.Rack{Type:"dark_oak"} run scoreboard players set $type pk.temp 3
execute if data storage pk.common:data Temp.Rack{Type:"jungle"} run scoreboard players set $type pk.temp 4
execute if data storage pk.common:data Temp.Rack{Type:"acacia"} run scoreboard players set $type pk.temp 5
execute if data storage pk.common:data Temp.Rack{Type:"crimson"} run scoreboard players set $type pk.temp 6
execute if data storage pk.common:data Temp.Rack{Type:"warped"} run scoreboard players set $type pk.temp 7
execute if data storage pk.common:data Temp.Rack{Type:"mangrove"} run scoreboard players set $type pk.temp 8
execute if data storage pk.common:data Temp.Rack{Type:"cherry"} run scoreboard players set $type pk.temp 9
execute if data storage pk.common:data Temp.Rack{Type:"bamboo"} run scoreboard players set $type pk.temp 10

# Set controller
execute positioned ~0.5 ~0.5 ~0.5 summon marker run function pk_racks:blocks/rack/place/controller_initialize

# Switch the rack placement (ground or wall)
execute if score $wall pk.temp matches 0 run function pk_racks:blocks/rack/place/ground/start
execute if score $wall pk.temp matches 1 run function pk_racks:blocks/rack/place/wall/start