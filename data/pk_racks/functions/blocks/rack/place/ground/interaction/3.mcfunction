#> pk_racks:blocks/rack/place/ground/interaction/3
# The facing score has been defined earlier within function pk_racks:blocks/rack/place/score_set_facing_direction

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.racks
tag @s add pk.racks.rack
tag @s add pk.racks.rack.component
tag @s add pk.racks.rack.ground
tag @s add pk.racks.rack.interaction
tag @s add pk.part.3

# Set data
data merge entity @s {width:0.502f,height:1.002f}

# Place
# - South-North (Z axis)  
execute if score $facing pk.temp matches 0..1 run tp @s ~0.75 ~ ~0.25
# - West-East (X axis) 
execute if score $facing pk.temp matches 2..3 run tp @s ~0.25 ~ ~0.75