#> pk_racks:blocks/rack/place/controller_initialize

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Set tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.custom_block.controller
tag @s add pk.racks
tag @s add pk.racks.rack
tag @s add pk.racks.rack.component
tag @s add pk.racks.rack.controller

execute if score $wall pk.temp matches 0 run tag @s add pk.racks.rack.ground
execute if score $wall pk.temp matches 1 run tag @s add pk.racks.rack.wall

# Store information to the controller
data modify entity @s data.Rack set from storage pk.common:data Temp.Rack