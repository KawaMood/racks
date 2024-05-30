#> pk_racks:blocks/rack/entities/items/update/wall/left/bow
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [1f,1f,1f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.383f,0.924f],translation:[0f,-0.134f,0.355f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.924f,0.383f],translation:[0.3f,-0.433f,0.378f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0.383f,0.924f,0f,0f],translation:[0f,-0.134f,0.355f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0.924f,0.383f,0f,0f],translation:[-0.3f,-0.433f,0.378f]}