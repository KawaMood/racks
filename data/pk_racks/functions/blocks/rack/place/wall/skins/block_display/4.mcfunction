#> pk_racks:blocks/rack/place/wall/skins/block_display/4

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
function pk_racks:blocks/rack/place/wall/skins/add_parts_common_tags
tag @s add pk.part.4

# Set data
scoreboard players set $part pk.temp 4
function pk_racks:blocks/rack/place/wall/skins/add_parts_block_state
data merge entity @s {transformation:{left_rotation:[-0.383f,0f,0f,0.924f],scale:[0.5f,0.45f,0.5f],translation:[0.05f,-0.47f,0.3375f]}}

# Set rotation from facing
execute if score $facing pk.temp matches 0 run tp @s ~ ~ ~ 180 0
execute if score $facing pk.temp matches 2 run tp @s ~ ~ ~ 270 0
execute if score $facing pk.temp matches 3 run tp @s ~ ~ ~ 90 0