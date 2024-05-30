#> pk_racks:blocks/rack/entities/body/create/ground/initialize_single
#
# Place a body part of a ground rack
#
# @input args
#   id: int
#       ID of the body part
#   transformation: entry
#       transformation data to merge with the current transformation of the block display entity
#   y_rotation: int
#       Offset to make the body part faces the right direction depending on rack facing data
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#   body_part: entry
#       Contains common args for all body parts
#
# @context location of the rack align xyz positioned ~0.5 ~0.5 ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.racks
tag @s add pk.racks.block
tag @s add pk.racks.block.rack
tag @s add pk.racks.block.rack.type.ground
tag @s add pk.racks.block.rack.body
$tag @s add pk.racks.block.rack.body.$(id)

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.rack.id

# Set data
#   transformation
$data merge entity @s {transformation:$(transformation)}
#   block_state
$data modify entity @s block_state.Name set value "minecraft:$(variant)_fence"

# Rotate
$tp @s ~ ~ ~ $(y_rotation) 0