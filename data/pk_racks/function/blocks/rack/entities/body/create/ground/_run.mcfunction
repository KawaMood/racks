#> pk_racks:blocks/rack/entities/body/create/ground/_run
#
# Place the body of a ground rack
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
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[-0.225f,0f,0f,0.974f],scale:[0.65f,1.0f,0.65f],translation:[-0.743f,-0.677f,0.135f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/ground/initialize_single with storage pk:common temp.body_part
#   2
data modify storage pk:common temp.body_part.id set value 2
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[-0.225f,0f,0f,0.974f],scale:[0.65f,1.0f,0.65f],translation:[0.0939f,-0.677f,0.135f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/ground/initialize_single with storage pk:common temp.body_part
#   3
data modify storage pk:common temp.body_part.id set value 3
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[0.225f,0f,0f,0.974f],scale:[0.65f,1.0f,0.65f],translation:[-0.7429f,-0.39f,-0.719f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/ground/initialize_single with storage pk:common temp.body_part
#   4
data modify storage pk:common temp.body_part.id set value 4
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[0.225f,0f,0f,0.974f],scale:[0.65f,1.0f,0.65f],translation:[0.094f,-0.39f,-0.719f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/ground/initialize_single with storage pk:common temp.body_part
#   5
data modify storage pk:common temp.body_part.id set value 5
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[0.5f,-0.5f,0.5f,0.5f],scale:[0.26f,1.001f,0.65f],translation:[0.501f,0.5f,-0.01f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/ground/initialize_single with storage pk:common temp.body_part
#   6
data modify storage pk:common temp.body_part.id set value 6
data modify storage pk:common temp.body_part.transformation set value {left_rotation:[0.5f,-0.5f,0.5f,0.5f],scale:[0.26f,1.001f,0.65f],translation:[0.501f,0.5f,-0.25f]}
execute summon block_display run function pk_racks:blocks/rack/entities/body/create/ground/initialize_single with storage pk:common temp.body_part