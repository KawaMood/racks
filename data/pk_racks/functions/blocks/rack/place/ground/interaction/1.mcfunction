#> pk_racks:blocks/rack/place/ground/interaction/1

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
tag @s add pk.part.1

# Set data
data merge entity @s {width:1.001f,height:1.001f}

# Place
tp @s ~0.5 ~ ~0.5