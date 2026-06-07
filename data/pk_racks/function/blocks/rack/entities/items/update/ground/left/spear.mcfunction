#> pk_racks:blocks/rack/entities/items/update/wall/left/spear
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale and item_display
data merge entity @s {transformation:{scale:[1.1f,1.1f,1.1f]},item_display:"thirdperson_lefthand"}

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0f,1f,0f,0f],translation:[.155f,.68f,-.135f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0f,0.383f,0f,0.924f],translation:[.225f,.68f,.09f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[0f,-0.383f,0f,0.924f],translation:[.085f,.68f,.09f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[0f,0f,0f,1f],translation:[.155f,.68f,.135f]}
#   4
execute if score $pose pk.temp matches 4 run data modify entity @s transformation merge value {left_rotation:[0.087f,0f,0f,0.996f],translation:[.155f,.62f,.225f]}
#   5
execute if score $pose pk.temp matches 5 run data modify entity @s transformation merge value {left_rotation:[-0.087f,0f,0f,0.996f],translation:[.155f,.68f,.055f]}