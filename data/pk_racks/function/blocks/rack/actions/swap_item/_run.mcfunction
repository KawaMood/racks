#> pk_racks:blocks/rack/actions/swap_item/_run
#
# Try to exchange the player item with the rack's item
#
# @writes temp.rack: Rack
#       Data of the rack the clicked interaction belongs to
#
# @writes temp.action_args
#       rack_type: string
#           Type of the rack that can be "wall" or "ground"
#       rack_new_item: Item or empty entry
#           New item to set in the rack's corresponding part
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id
execute store result score $part.left pk.temp if entity @s[tag=pk.racks.block.rack.part.left]

# Reset update args data
data remove storage pk:common temp.action_args

# Define rack_type
data modify storage pk:common temp.action_args.rack_type set value "ground"
execute if entity @s[tag=pk.racks.block.rack.type.wall] run data modify storage pk:common temp.action_args.rack_type set value "wall"

# Try to define rack_new_item
execute as @a[tag=pk.current.player,limit=1,distance=..65] run function pk_racks:blocks/rack/actions/swap_item/define_rack_new_item
#   @return fail if the player holds an unacceptable item
execute unless data storage pk:common temp.action_args.new_rack_item run return fail

# @continue Search rack data of the current interaction
data remove storage pk:common temp.rack
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.rack set from storage pk:racks database.blocks.racks[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_racks:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args
#   @return fail if rack not found in database
execute unless data storage pk:common temp.rack run return fail

# @continue Define prev_rack_item
execute if score $part.left pk.temp matches 1 run data modify storage pk:common temp.prev_rack_item set from storage pk:common temp.rack.items[0]
execute if score $part.left pk.temp matches 0 run data modify storage pk:common temp.prev_rack_item set from storage pk:common temp.rack.items[1]
#   @return fail if both player and clicked rack slot have no item
execute unless data storage pk:common temp.action_args.new_rack_item.id unless data storage pk:common temp.prev_rack_item.id run return fail

# @continue Update data
execute if score $part.left pk.temp matches 1 run data modify storage pk:common temp.rack.items[0] set from storage pk:common temp.action_args.new_rack_item
execute if score $part.left pk.temp matches 0 run data modify storage pk:common temp.rack.items[1] set from storage pk:common temp.action_args.new_rack_item
function pk_racks:blocks/rack/data/update

# Update the display_item entity
execute if score $part.left pk.temp matches 1 as @e[type=item_display,tag=pk.racks.block.rack.item,tag=pk.racks.block.rack.part.left,predicate=pk_racks:scores/custom_block/component_id_match,limit=1,distance=..2] run function pk_racks:blocks/rack/entities/items/update/_run
execute if score $part.left pk.temp matches 0 as @e[type=item_display,tag=pk.racks.block.rack.item,tag=pk.racks.block.rack.part.right,predicate=pk_racks:scores/custom_block/component_id_match,limit=1,distance=..2] run function pk_racks:blocks/rack/entities/items/update/_run

# Change item of the mainhand of the player
item replace entity @a[tag=pk.current.player,limit=1,distance=..65] weapon.mainhand with air
data modify storage pk:common temp.dynamic_item_args set value {components:{},slot:"weapon.mainhand"}
data modify storage pk:common temp.dynamic_item_args merge from storage pk:common temp.prev_rack_item
execute if data storage pk:common temp.dynamic_item_args.id as @a[tag=pk.current.player,limit=1,distance=..65] run function pk_racks:packages/dynamic_item/replace with storage pk:common temp.dynamic_item_args

# Animations
execute store result score $action.take pk.temp unless data storage pk:common temp.action_args.new_rack_item.id
#   Take
execute if score $action.take pk.temp matches 1.. run playsound entity.item_frame.remove_item block @a[x=0]
#   Put or swap
execute unless score $action.take pk.temp matches 1.. run playsound item.armor.equip_generic block @a[x=0]