#> pk_racks:tools/debug/recreate_all_blocks/stop
# @context the player who had run the recreate process

# Logs
tellraw @a[tag=pk.debug.recreate] [{"text": "Recreated all \"","color": "gray"},{"nbt":"debug.recreate.block_id","storage":"pk:common"},{"text": "\" blocks successfully"}]

# Reset score
scoreboard players reset $debugging pk.value

# Unmark recreater
tag @a[tag=pk.debug.recreate] remove pk.debug.recreate

# Fallback
execute unless data storage pk:common debug.recreate{fallback:""} run function pk_racks:tools/debug/recreate_all_blocks/stop_fallback with storage pk:common debug.recreate