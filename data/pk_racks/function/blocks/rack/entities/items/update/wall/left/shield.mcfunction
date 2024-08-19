#> pk_racks:blocks/rack/entities/items/update/wall/left/shield
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [1f,1f,1f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,-0.292f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.707f,0.707f],translation:[-0.5f,-0.5f,-0.292f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0f,0f,1f,0f],translation:[0.5f,-0.5f,-0.292f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.707f,-0.707f],translation:[0.5f,0.5f,-0.292f]}