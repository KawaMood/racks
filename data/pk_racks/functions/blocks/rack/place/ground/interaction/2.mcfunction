#> pk_racks:blocks/rack/place/ground/interaction/2

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
tag @s add pk.part.2

# Set data
data merge entity @s {width:0.502f,height:1.002f}

# Place
tp @s ~0.75 ~ ~0.75