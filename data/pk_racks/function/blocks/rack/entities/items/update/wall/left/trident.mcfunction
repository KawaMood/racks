#> pk_racks:blocks/rack/entities/items/update/wall/left/trident
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [1f,1f,1f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.707f,0.707f],translation:[-1.117f,-0.523f,-0.102f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0f,0f,-0.707f,0.707f],translation:[1.117f,0.473f,-0.102f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.707f,0.707f],translation:[-1.117f,-0.523f,-0.102f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0f,0f,-0.707f,0.707f],translation:[1.117f,0.473f,-0.102f]}