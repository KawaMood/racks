#> pk_racks:tools/debug/recreate_all_blocks/start
# @context the player who had run the recreate process
# @input
#   $fallback (string): optional command to run at the end of the process. Set as empty string if no fallback is required
#   $source (string): storage path to the list of blocks to recreate
#   $block_id (string): id of the block to udpate
#
#   In order to be used, the block stored in the database must have a location data:
#       location (entry):
#           x / y / z (int): coordinates of the block
#           dimension (string): dimension of the block

# Check if an update is in progress
execute if score $debugging pk.value matches 1 run tellraw @s {text: "Error: Another debug is already in progress.",color: "red"}
execute if score $debugging pk.value matches 1 run return fail

# @continue Prepare data
$data modify storage pk:common debug.recreate.blocks set from storage $(source)
$data modify storage pk:common debug.recreate.block_id set value "$(block_id)"
$data modify storage pk:common debug.recreate.fallback set value "$(fallback)"

# Set score
scoreboard players set $debugging pk.value 1

# Logs
tellraw @s [{text: "Starting to recreate all \"",color: "gray"},{nbt:"debug.recreate.block_id",storage:"pk:common"},{text: "\" blocks ..."}]

# Mark debugger
tag @s add pk.debug.recreate

# Try to recreate all blocks
scoreboard players set $pk.debug.recreate.blocks.length pk.value 0
execute store result score $pk.debug.recreate.blocks.length pk.value run data get storage pk:common debug.recreate.blocks
execute if score $pk.debug.recreate.blocks.length pk.value matches 0 run function pk_racks:tools/debug/recreate_all_blocks/stop
execute if score $pk.debug.recreate.blocks.length pk.value matches 1.. run function pk_racks:tools/debug/recreate_all_blocks/1