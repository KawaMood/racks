#> pk_racks:blocks/rack/entities/items/update/_run
#
# Update entity's "item" data and repare args to run the right update function dynamically to apply transformations
#
# @input storage pk:common temp.rack: Rack
#   The rack's data
#
# @writes score $pose pk.temp
#   Pose of the rack
#
# @writes storage pk:common temp.update_args
#   Args to use to run the right function dynamically to apply current entity's transformations
#       rack_type: string
#           "ground" or "wall"
#       rack_part: string
#           "left" or "right"
#       item_type: string
#           Item type 
#
# @context entity to update

# Update item
data remove entity @s item
execute if entity @s[tag=pk.racks.block.rack.part.left] if data storage pk:common temp.rack.items[0].id run data modify entity @s item set from storage pk:common temp.rack.items[0]
execute if entity @s[tag=pk.racks.block.rack.part.right] if data storage pk:common temp.rack.items[1].id run data modify entity @s item set from storage pk:common temp.rack.items[1]

# Reset item_display
data remove entity @s item_display

# Store pose in score
execute store result score $pose pk.temp run data get storage pk:common temp.rack.pose

# Prepare the args to run a dynamic function
data modify storage pk:common temp.update_args set value {item_type:"air",rack_type:"ground",rack_part:"left"}
#   Set rack_type
execute if entity @s[tag=pk.racks.block.rack.type.wall] run data modify storage pk:common temp.update_args.rack_type set value "wall"
#   Set rack_part
execute if entity @s[tag=pk.racks.block.rack.part.right] run data modify storage pk:common temp.update_args.rack_part set value "right"
#   Set item_type
function pk_racks:blocks/rack/entities/items/update/define_item_type

# Apply the right transformation dynamically
function pk_racks:blocks/rack/entities/items/update/run_with_args with storage pk:common temp.update_args