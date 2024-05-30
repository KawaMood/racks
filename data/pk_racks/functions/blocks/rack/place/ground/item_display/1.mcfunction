#> pk_racks:blocks/rack/place/ground/item_display/1

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.racks
tag @s add pk.racks.rack
tag @s add pk.racks.rack.component
tag @s add pk.racks.rack.ground
tag @s add pk.racks.rack.item
tag @s add pk.item.1

# Set data
data merge entity @s {Rotation:[45f,0f]}

# Fix rotation for 1.20
data merge entity @s {transformation:{right_rotation:[0f,1f,0f,0f]}}

# Place
# - West-East (X axis)
execute if score $facing pk.temp matches 0..1 run tp @s ~0.325 ~0.5 ~0.5
# - North-South (Z axis)
execute if score $facing pk.temp matches 2..3 run tp @s ~0.5 ~0.5 ~0.325