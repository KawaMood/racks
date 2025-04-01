#> pk_racks:tools/debug/recreate_all_blocks/4
# @input
#   $x / $y / $z (int): coordinates of the block
#   $dimension (string): dimension of the block
#   $block_id (string): id of the block

# Check if the chunk of the block to recreate is loaded
scoreboard players set $is_loaded pk.temp 0
$execute in $(dimension) if loaded $(x) $(y) $(z) run scoreboard players set $is_loaded pk.temp 1

# If not, wait 1 second and retry
execute if score $is_loaded pk.temp matches 0 run schedule function pk_racks:tools/debug/recreate_all_blocks/3 1s
execute if score $is_loaded pk.temp matches 0 run return fail

# @continue If yes, recreate current block
$execute unless score $is_loaded pk.temp matches 0 in $(dimension) positioned $(x).0 $(y).0 $(z).0 run function pk_racks:tools/debug/recreate_all_blocks/id/$(block_id)

tellraw @a[tag=pk.debug.recreate] [{text: "Recreated \"",color: "gray"},{nbt:"debug.recreate.block_id",storage:"pk:common"},{text: "\" at ["},{nbt:"debug.recreate.block.location.x",storage:"pk:common"},{text: ","},{nbt:"debug.recreate.block.location.y",storage:"pk:common"},{text: ","},{nbt:"debug.recreate.block.location.z",storage:"pk:common"},{text: "] in "},{nbt:"debug.recreate.block.location.dimension",storage:"pk:common"}]

# Unload the chunk if needed
execute if score $pk.debug.recreate.chunk.already_forceload pk.value matches 0 run forceload remove ~ ~

# Continue process with next block to recreate, or stop it if there are no blocks anymore
data remove storage pk:common debug.recreate.blocks[-1]
scoreboard players remove $pk.debug.recreate.blocks.length pk.value 1
execute if score $pk.debug.recreate.blocks.length pk.value matches 0 as @a[tag=pk.debug.recreate,limit=1] run function pk_racks:tools/debug/recreate_all_blocks/stop
execute unless score $pk.debug.recreate.blocks.length pk.value matches 0 run function pk_racks:tools/debug/recreate_all_blocks/1