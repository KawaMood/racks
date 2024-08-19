#> pk_racks:blocks/rack/entities/items/create/initialize_single
#
# Place a item of a rack
#
# @input args
#   part: string
#       "left" or "right"
#   type: string
#       "ground" or "wall"
#   y_rotation: int
#        Depends on the facing
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context item location of the rack align xyz positioned ~0.5 ~0.5 ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.racks
tag @s add pk.racks.block
tag @s add pk.racks.block.rack
$tag @s add pk.racks.block.rack.type.$(type)
tag @s add pk.racks.block.rack.item
$tag @s add pk.racks.block.rack.part.$(part)

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.rack.id

# Set data
data modify entity @s interpolation_duration set value 5
function pk_racks:blocks/rack/entities/items/update/_run

# Rotate
$tp @s ~ ~ ~ $(y_rotation) 0