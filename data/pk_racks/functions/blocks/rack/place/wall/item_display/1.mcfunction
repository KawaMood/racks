#> pk_racks:blocks/rack/place/wall/item_display/1

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.racks
tag @s add pk.racks.rack
tag @s add pk.racks.rack.component
tag @s add pk.racks.rack.wall
tag @s add pk.racks.rack.item
tag @s add pk.item.1

# Fix rotation for 1.20
data merge entity @s {transformation:{right_rotation:[0f,1f,0f,0f]}}

# Set rotation from facing
execute if score $facing pk.temp matches 0 run tp @s ~ ~ ~ 180 0
execute if score $facing pk.temp matches 2 run tp @s ~ ~ ~ 270 0
execute if score $facing pk.temp matches 3 run tp @s ~ ~ ~ 90 0