#> pk_racks:blocks/rack/place/wall/skins/block_display/1

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
function pk_racks:blocks/rack/place/wall/skins/add_parts_common_tags
tag @s add pk.part.1

# Set data
scoreboard players set $part pk.temp 1
function pk_racks:blocks/rack/place/wall/skins/add_parts_block_state
data merge entity @s {transformation:{left_rotation:[0f,0f,0.707f,0.707f],scale:[1.1f,1.1f,1.1f],translation:[0.25f,-0.715f,-0.5325f]}}

# Set rotation from facing
execute if score $facing pk.temp matches 0 run tp @s ~ ~ ~ 180 0
execute if score $facing pk.temp matches 2 run tp @s ~ ~ ~ 270 0
execute if score $facing pk.temp matches 3 run tp @s ~ ~ ~ 90 0