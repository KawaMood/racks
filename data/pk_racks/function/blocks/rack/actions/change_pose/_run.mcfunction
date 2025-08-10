#> pk_racks:blocks/rack/actions/change_pose/_run
#
# Try to change the rack's item(s) pose
#
# @writes temp.rack: Rack
#       Data of the rack the clicked interaction belongs to
#
# @writes temp.action_args
#       rack_type: string
#           Type of the rack that can be "wall" or "ground"
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search rack data of the current interaction
data remove storage pk:common temp.rack
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.rack set from storage pk:racks database.blocks.racks[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_racks:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args
#   @return fail if rack not found in database or if rack has no items
execute unless data storage pk:common temp.rack.items[0].id unless data storage pk:common temp.rack.items[1].id run return fail

# @continue Reset update args data
data remove storage pk:common temp.action_args

# Define rack_type
execute store result score $type.ground pk.temp if entity @s[tag=pk.racks.block.rack.type.ground]
data modify storage pk:common temp.action_args.rack_type set value "wall"
execute if score $type.ground pk.temp matches 1 run data modify storage pk:common temp.action_args.rack_type set value "ground"

# Define new_pose
execute store result score $pose pk.temp run data get storage pk:common temp.rack.pose
scoreboard players add $pose pk.temp 1
#   Ground rack (max 5)
execute if score $type.ground pk.temp matches 1 if score $pose pk.temp matches 6.. run scoreboard players set $pose pk.temp 0
#   Wall rack (max 3)
execute if score $type.ground pk.temp matches 0 if score $pose pk.temp matches 4.. run scoreboard players set $pose pk.temp 0

# @continue Update data
execute store result storage pk:common temp.rack.pose short 1 run scoreboard players get $pose pk.temp
function pk_racks:blocks/rack/data/update

# Update the display_item entities
execute as @e[type=item_display,tag=pk.racks.block.rack.item,predicate=pk_racks:scores/custom_block/component_id_match,distance=..2] run function pk_racks:blocks/rack/actions/change_pose/from_target_item_display

# Animations
playsound entity.item_frame.rotate_item block @a[x=0]