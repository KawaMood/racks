#> pk_racks:blocks/rack/entities/items/update/wall/left/hoe
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [1f,1f,1f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.342f,0.94f],translation:[-0.045f,0.086f,0.397f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0.342f,0.94f,0f,0f],translation:[0.045f,0.086f,0.397f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0.342f,0.94f],translation:[-0.045f,0.086f,0.397f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0.342f,0.94f,0f,0f],translation:[0.045f,0.086f,0.397f]}