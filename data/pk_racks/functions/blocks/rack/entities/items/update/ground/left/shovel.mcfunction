#> pk_racks:blocks/rack/entities/items/update/ground/left/shovel
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data modify entity @s transformation.scale set value [1f,1f,1f]

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[-.271f,.653f,-.271f,.653f],translation:[.155f,.145f,-.04f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[-.354f,.854f,-.146f,.354f],translation:[.135f,.145f,-.035f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[-.354f,.854f,.146f,-.354f],translation:[.135f,.145f,.035f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[-.271f,.653f,.271f,-.653f],translation:[.155f,.145f,.04f]}
#   4
execute if score $pose pk.temp matches 4 run data modify entity @s transformation merge value {left_rotation:[-.146f,.354f,.354f,-.854f],translation:[.205f,.145f,.024f]}
#   5
execute if score $pose pk.temp matches 5 run data modify entity @s transformation merge value {left_rotation:[-.146f,.354f,-.354f,.854f],translation:[.205f,.145f,-.024f]}