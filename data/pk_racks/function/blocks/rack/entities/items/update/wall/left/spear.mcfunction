#> pk_racks:blocks/rack/entities/items/update/wall/left/axe
#
# Update transformation of the entity
#
# @input score $pose pk.temp
#   Pose of the rack

# Define scale
data merge entity @s {transformation:{scale:[1.1f,1.1f,1.1f]},item_display:"thirdperson_lefthand"}

# Switch pose
#   0
execute if score $pose pk.temp matches 0 run data modify entity @s transformation merge value {left_rotation:[0.5f,0.5f,-0.5f,0.5f],translation:[-.115f,-.115f,.385f]}
#   1
execute if score $pose pk.temp matches 1 run data modify entity @s transformation merge value {left_rotation:[0.5f,-0.5f,0.5f,0.5f],translation:[.115f,-.115f,.385f]}
#   2
execute if score $pose pk.temp matches 2 run data modify entity @s transformation merge value {left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],translation:[-.115f,.165f,.385f]}
#   3
execute if score $pose pk.temp matches 3 run data modify entity @s transformation merge value {left_rotation:[-0.5f,0.5f,0.5f,0.5f],translation:[.115f,.165f,.385f]}