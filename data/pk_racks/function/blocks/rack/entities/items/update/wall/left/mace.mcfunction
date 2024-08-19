#> pk_racks:blocks/rack/entities/items/update/wall/left/mace
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [1f,1f,1f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0.259f,0.966f,0f,0f],translation:[0.044f,0.137f,0.397f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[-0.383f,0.924f,0f,0f],translation:[0.0f,-0.081f,0.396f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.259f,0.966f],translation:[-0.044f,0.137f,0.397f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0f,0f,-0.383f,0.924f],translation:[0.0f,-0.081f,0.396f]}