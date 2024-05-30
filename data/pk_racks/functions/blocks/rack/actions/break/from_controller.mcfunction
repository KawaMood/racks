#> pk_racks:blocks/rack/actions/break/from_controller
#
# Break rack
#
# @writes temp.rack: Rack
#       Data of the rack
#
# @context rack controller at @s

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search rack data of the current controller
data remove storage pk:common temp.rack
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.rack set from storage pk:racks database.blocks.racks[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_racks:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args

# Delete from the database
data modify storage pk:common package.dynamic_command.args set value {p1:"data remove storage pk:racks database.blocks.racks[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_racks:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args

# Remove blocks
function pk_racks:blocks/rack/blocks/delete

# Drop the stored items
execute if data storage pk:common temp.rack.items[0].id run function pk_racks:blocks/rack/actions/break/loot_item/left
execute if data storage pk:common temp.rack.items[1].id run function pk_racks:blocks/rack/actions/break/loot_item/right

# Check if the rack has been removed too quickly
#   Used for Worldguard compatibility
function pk_racks:blocks/rack/actions/break/should_loot_itself

# Remove entities
function pk_racks:blocks/rack/entities/delete_all

# Animations
playsound entity.armor_stand.break block @a[x=0] ~ ~ ~