#> pk_racks:blocks/rack/entities/items/update/wall/left/trident
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale and item_display
data merge entity @s {transformation:{scale:[1f,1f,1f]},item_display:"thirdperson_lefthand"}

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[-0.354f,0.354f,0.612f,0.612f],translation:[-0.075f,0.03f,0.435f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0.354f,0.354f,-0.612f,0.612f],translation:[0.075f,-0.08f,0.435f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0.612f,-0.612f,0.354f,0.354f],translation:[-0.075f,-0.08f,0.36f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[-0.612f,-0.612f,-0.354f,0.354f],translation:[0.075f,0.03f,0.36f]}