#> pk_racks:blocks/rack/entities/items/update/wall/left/shears
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [0.65f,0.65f,0.65f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0.924f,0.383f,0f,0f],translation:[0.2983f,-0.4834f,0.375f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0.924f,0.383f,0f,0f],translation:[-0.2983f,-0.4834f,0.375f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.924f,0.383f],translation:[0.2983f,-0.4834f,0.375f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.924f,0.383f],translation:[-0.2983f,-0.4834f,0.375f]}