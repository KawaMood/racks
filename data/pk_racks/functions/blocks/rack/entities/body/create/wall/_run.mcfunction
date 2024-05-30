#> pk_racks:blocks/rack/entities/body/create/wall/_run
#
# Place the body of a wall rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @writes storage pk:common input
#   body_part: entry
#       Rewrite args for a single body part
#
# @context location of the rack align xyz positioned ~0.5 ~0.5 ~0.5

# Place each part
#   1
data modify storage pk:common temp.body_part.id set value 1
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[0f,0f,0.707f,0.707f],scale:[1.1f,1.1f,1.1f],translation:[0.85f,-0.715f,-0.5325f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/wall/initialize_single with storage pk:common temp.body_part
#   2
data modify storage pk:common temp.body_part.id set value 2
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[0f,0f,0.707f,0.707f],scale:[1.1f,1.1f,1.1f],translation:[0.25f,-0.715f,-0.5325f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/wall/initialize_single with storage pk:common temp.body_part
#   3
data modify storage pk:common temp.body_part.id set value 3
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[-0.383f,0f,0f,0.924f],scale:[0.5f,0.45f,0.5f],translation:[0.05f,-0.47f,0.3375f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/wall/initialize_single with storage pk:common temp.body_part
#   4
data modify storage pk:common temp.body_part.id set value 4
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[-0.383f,0f,0f,0.924f],scale:[0.5f,0.45f,0.5f],translation:[-0.55f,-0.47f,0.3375f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/wall/initialize_single with storage pk:common temp.body_part