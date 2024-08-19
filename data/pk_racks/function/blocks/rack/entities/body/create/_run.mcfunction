#> pk_racks:blocks/rack/entities/body/create/_run
#
# Place the body of a rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @writes storage pk:common input
#   body_part: entry
#       Args for body part
#
# @context location of the rack

# Prepare body parts common args
#   variant
data modify storage pk:common temp.body_part set value {variant:"oak"}
data modify storage pk:common temp.body_part.variant set from storage pk:common temp.rack.variant
#   y_rotation
data modify storage pk:common temp.body_part.y_rotation set value 0
execute if data storage pk:common temp.rack{facing:"east"} run data modify storage pk:common temp.body_part.y_rotation set value 90
execute if data storage pk:common temp.rack{facing:"south"} run data modify storage pk:common temp.body_part.y_rotation set value 180
execute if data storage pk:common temp.rack{facing:"west"} run data modify storage pk:common temp.body_part.y_rotation set value 270

# Switch process depending on the wall data of the rack
#   Ground
execute unless data storage pk:common temp.rack{wall:1b} align xyz positioned ~0.5 ~0.5 ~0.5 run return run function pk_racks:blocks/rack/entities/body/create/ground/_run
#   @continue Wall
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function pk_racks:blocks/rack/entities/body/create/wall/_run