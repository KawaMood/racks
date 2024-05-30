#> pk_racks:tools/upgrade/from_v2/blocks/1

# Prepare data
data modify storage pk:common update.old_entry set from storage pk:common update.blocks[-1]
data modify storage pk:common update.new_entry set value {}

# Create new entry
#   id
data modify storage pk:common update.new_entry.id set from storage pk:common update.old_entry.id
#   wall
data modify storage pk:common update.new_entry.wall set from storage pk:common update.old_entry.Wall
#   facing
data modify storage pk:common update.new_entry.facing set value "north"
execute if data storage pk:common update.old_entry{Facing:0b} run data modify storage pk:common update.new_entry.facing set value "south"
execute if data storage pk:common update.old_entry{Facing:2b} run data modify storage pk:common update.new_entry.facing set value "west"
execute if data storage pk:common update.old_entry{Facing:3b} run data modify storage pk:common update.new_entry.facing set value "east"
#   variant
data modify storage pk:common update.new_entry.variant set from storage pk:common update.old_entry.Type
#   owner
data modify storage pk:common update.new_entry.owner set from storage pk:common update.Owner
#   location
data modify storage pk:common update.new_entry.location.x set from storage pk:common update.old_entry.x
data modify storage pk:common update.new_entry.location.y set from storage pk:common update.old_entry.y
data modify storage pk:common update.new_entry.location.z set from storage pk:common update.old_entry.z
data modify storage pk:common update.new_entry.location.dimension set from storage pk:common update.old_entry.Dimension
#   items_rotation
execute store result storage pk:common update.new_entry.items_rotation short 1 run data get storage pk:common update.old_entry.ItemRotation
#   items
data modify storage pk:common update.new_entry.items set value [{},{}]

# Prepend to database
data modify storage pk:racks database.blocks.racks prepend from storage pk:common update.new_entry

# Get items from display entities and update entities
scoreboard players set $update.attempt pk.temp 0
function pk_racks:tools/upgrade/from_v2/blocks/2 with storage pk:common update.new_entry.location