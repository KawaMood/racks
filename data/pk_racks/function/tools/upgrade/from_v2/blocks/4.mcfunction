#> pk_racks:tools/upgrade/from_v2/blocks/4

# Logs
tellraw @a[tag=pk.update_from_v2,limit=1] [{text: "Updated \"rack\" at [",color: "gray"},{nbt:"update.new_entry.location.x",storage:"pk:common"},{text: ","},{nbt:"update.new_entry.location.y",storage:"pk:common"},{text: ","},{nbt:"update.new_entry.location.z",storage:"pk:common"},{text: "] in "},{nbt:"update.new_entry.location.dimension",storage:"pk:common"}]

# Store items from display entities
data modify storage pk:common update.new_entry.items[0] set from entity @e[type=item_display,tag=pk.racks.rack.item,tag=pk.item.1,distance=..2,limit=1,sort=nearest] item
execute if data storage pk:common update.old_entry{Wall:0b} run data modify storage pk:common update.new_entry.items[1] set from entity @e[type=item_display,tag=pk.racks.rack.item,tag=pk.item.2,distance=..2,limit=1,sort=nearest] item

# Update in database
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:racks database.blocks.racks[{id:",p2:"}].items set from storage pk:common update.new_entry.items"}
data modify storage pk:common package.dynamic_command.args.v1 set from storage pk:common update.new_entry.id
function pk_racks:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args

# Replace entities
execute store result score $temp pk.custom_block.component.id run data get storage pk:common update.new_entry.id
kill @e[type=#pk_racks:custom_block_components,tag=pk.racks,predicate=pk_racks:scores/custom_block/component_id_match,distance=..2]
data modify storage pk:common temp.rack set from storage pk:common update.new_entry
function pk_racks:blocks/rack/actions/place/_run

# Remove forceload
execute if score $update.is_forceloaded pk.temp matches 0 run forceload remove ~ ~

# Recursive call
data remove storage pk:common update.blocks[-1]
execute unless data storage pk:common update.blocks[-1] run function pk_racks:tools/upgrade/from_v2/stop
execute if data storage pk:common update.blocks[-1] run function pk_racks:tools/upgrade/from_v2/blocks/1